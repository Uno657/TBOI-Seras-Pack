--[[
    gonna leave this here in case anybody decides to take a look at this jank-ass code; ts has taken me actual days to do and its still not working, please god help me
      ^^^ update: still not working 2 days later, i keep finding new bugs and edge-cases

    if you want to use this (since there isn't a custom health api as of when i made this), js ask me on discord, user @_serapher, im in the modding of isaac server :)
      ^^^ i will respond asap so dw abt it taking a while
      ^^^ also ill try my best at explaining how it works if you want me to

    TODO:
     - Add compatibility
]]

local CustomEnums = require("scripts.utility.enums.lua")

local HEART_VANISH_FRAME = 5

-- vvv HeartManager Functions
local HeartManager = {}

function HeartManager:GetHeartStatus(HeartData)
    -- if the save manager has loaded HeartData
    if HeartData then
        -- and the heart exists, then find the state of it
        if HeartData["State"] then
            if string.find(HeartData["State"],"Half") then
                var = "Half"
            elseif string.find(HeartData["State"],"Full") then
                var = "Full"
            -- if the heart isn't a half or full heart, fallback
            else
                var = "Unknown"
            end
        end
    end
    return var
end

function HeartManager:GetTaintedHearts()
    num = 0
    for pos,HeartData in pairs(Hearts) do
        if HeartManager:GetHeartStatus(HeartData) == "Full" and HeartData["isTaintedHeart"] == true then
            num = num + 2
        elseif HeartManager:GetHeartStatus(HeartData) == "Half" and HeartData["isTaintedHeart"] == true then
            num = num + 1
        end
    end
    return num
end

-- reads the amount of hearts isaac has, *including* empty heart containers
function HeartManager:GetHeartCount()
    local player = Isaac.GetPlayer()
    local var = player:GetSoulHearts() + player:GetEffectiveMaxHearts()
    return var
end

function HeartManager:AddTaintedHearts(num)
    local player = Isaac.GetPlayer()
    lap = 0
    repeat
        lap = lap + 1
        -- if isaac has less than max hearts, add tainted hearts
        if HeartManager:GetHeartCount() < player:GetHeartLimit() then
            -- tainted hearts are actually soul hearts in tboi's built-in health manager, so add one
            player:AddSoulHearts(1)
            local heartCount = HeartManager:GetHeartCount() / 2
            local _,fracPart = math.modf(heartCount)
            if fracPart == 0.5 then
                heartCount = heartCount + 0.5
            end
            -- if the new heart is a half heart, it needs to be in the next heart slot
            if HeartManager:GetHeartStatus(Hearts[heartCount]) ~= "Half" then
                Hearts[heartCount]["isTaintedHeart"] = true
            else
                Hearts[heartCount + 1]["isTaintedHeart"] = true
            end
        end
    until lap == num
end

function HeartManager:GetHeartType(HeartData)
    if HeartData then
        if HeartData["State"] then
            if string.find(HeartData["State"],"RedHeart") then
                var = "Red Heart"
            elseif string.find(HeartData["State"],"BlueHeart") 
            and HeartData["isTaintedHeart"] == false 
            then
                var = "Soul Heart"
            elseif string.find(HeartData["State"],"BlackHeart") then
                var = "Black Heart"
            elseif string.find(HeartData["State"],"EmptyHeart") then
                var = "Heart Container"
            elseif string.find(HeartData["State"],"CoinHeart") then
                var = "Coin Heart"

            -- bone hearts don't play nice with the heart manager, so make sure to include both it and it's contents
            elseif string.find(HeartData["State"],"BoneHeart") 
            and string.find(HeartData["State"],"Rotten") 
            then
                var = "Bone Heart + Rotten Heart"
            elseif string.find(HeartData["State"],"BoneHeart") 
            and string.find(HeartData["State"],"Empty") 
            then
                var = "Bone Heart"
            elseif string.find(HeartData["State"],"BoneHeart") then
                var = "Bone Heart + Red Heart"
            
            elseif string.find(HeartData["State"],"Rotten") then
                var = "Rotten Heart"
            elseif string.find(HeartData["State"],"Broken") then
                var = "Broken Heart"
            
            -- tainted hearts are soul hearts in the built-in heart manager, so make sure there isn't a desync with the tainted heart table
            elseif string.find(HeartData["State"],"BlueHeart") 
            and HeartData["isTaintedHeart"] == true 
            then
                var = "Tainted Heart"
            end
        end
    end
    return var
end

-- ^^^ HeartManager Functions
---------------------------------------------------------------
-- vvv Save Data

function mod:SaveVariables(ShouldSave)
    -- the save data needs to be loaded in order to save more, so keep trying until it is
    repeat
        if SaveManager.IsLoaded() == true then
            -- sometimes we don't want to save
            if SaveManager.GetRunSave() and ShouldSave == true then
                SaveManager.GetRunSave().Hearts = {}
                -- project the table onto something readable by the save manager
                for pos,HeartData in pairs(Hearts) do
                    SaveManager.GetRunSave().Hearts[pos] = {
                        ["isTaintedHeart"] = HeartData["isTaintedHeart"]
                    }
                end
            end
            -- we don't want to render hearts on the title screen
            shouldLoadHearts = false
        end
    until SaveManager.IsLoaded() == true
end

function mod:PostGameStarted(IsContinued)
    entities = {}
    local player = Isaac.GetPlayer()

    -- if it's a new run, set the hearts table to default (empty) and tell the renderer to render the hearts
    if IsContinued == false then
        Hearts = {}
        shouldLoadHearts = true
    -- if it's a continued run, ensure the save manager has loaded everything then build the hearts table
    elseif IsContinued == true and SaveManager.GetRunSave() and SaveManager.GetRunSave().Hearts then
        Hearts = {}
        for pos,HeartData in pairs(SaveManager.GetRunSave().Hearts) do
            Hearts[pos] = {
                ["isTaintedHeart"] = HeartData["isTaintedHeart"]
            }
        end
        shouldLoadHearts = true
    end
end

-- ^^^ Save Data
---------------------------------------------------------------
-- vvv Pickup Management

function mod:PrePickupCollision(EntityPickup,_,_)
    local player = Isaac.GetPlayer()
    local heartCount = HeartManager:GetHeartCount()

    -- if isaac's hearts aren't full and he touches a tainted heart, pick it up and add it to his health
    if EntityPickup.Variant == CustomEnums.PickupVariant.PICKUP_HEART
    and EntityPickup.SubType == CustomEnums.HeartSubType.HEART_TAINTED 
    and heartCount < player:GetHeartLimit() 
    and EntityPickup:GetSprite():IsPlaying("Collect") == false 
    then
        entities[EntityPickup] = EntityPickup:GetSprite()
        EntityPickup:PlayPickupSound()
        entities[EntityPickup]:Play("Collect",true)

        HeartManager:AddTaintedHearts(2)
    
    -- if isaac's hearts aren't full and he touches a half tainted heart, pick it up and add it to his health
    elseif EntityPickup.Variant == CustomEnums.PickupVariant.PICKUP_HEART
    and EntityPickup.SubType == CustomEnums.HeartSubType.HEART_HALF_TAINTED 
    and heartCount < player:GetHeartLimit() 
    and EntityPickup:GetSprite():IsPlaying("Collect") == false 
    then
        entities[EntityPickup] = EntityPickup:GetSprite()
        EntityPickup:PlayPickupSound()
        entities[EntityPickup]:Play("Collect",true)

        HeartManager:AddTaintedHearts(1)
    
    -- if isaac's hearts are full, but he has a tainted heart, and he touches a soul-type heart, pick it up, remove the tainted heart, and add it to his health
    elseif (EntityPickup.SubType == HeartSubType.HEART_SOUL
    or EntityPickup.SubType == HeartSubType.HEART_BLACK
    or EntityPickup.SubType == HeartSubType.HEART_BONE)
    and heartCount == player:GetHeartLimit() 
    and EntityPickup:GetSprite():IsPlaying("Collect") == false 
    then
        -- find if isaac has a full tainted heart
        for _,HeartData in pairs(Hearts) do
            if HeartManager:GetHeartStatus(HeartData) == "Full" 
            and HeartData["isTaintedHeart"] == true
            then
                hasFullHeart = true
            end
        end

        -- if he does, find his latest tainted heart so we can replace it
        lastTaintedHeart = 0
        if hasFullHeart == true then
            for pos,HeartData in pairs(Hearts) do
                if HeartData["isTaintedHeart"] == true
                and pos > lastTaintedHeart 
                then
                    lastTaintedHeart = pos
                end
            end

            -- handle picking the heart up, since tboi will register isaac's health as full
            entities[EntityPickup] = EntityPickup:GetSprite()
            EntityPickup:PlayPickupSound()
            entities[EntityPickup]:Play("Collect",true)

            -- remove the tainted heart and update the healthbar to match
            Hearts[lastTaintedHeart]["isTaintedHeart"] = false
            if EntityPickup.SubType ~= HeartSubType.HEART_SOUL then
                player:AddSoulHearts(-2)
            end
        end
    end
end

-- ^^^ Pickup Management
---------------------------------------------------------------
-- vvv Rendering

-- disable tboi's vanilla rendering
function mod:PrePlayerHUDRenderHearts(_,_,_,_,_)
    return true
end

function mod:PreRender()
    -- we only want to render hearts when in a run
    if shouldLoadHearts == true then
        local PlayerHUDHearts = Game():GetHUD():GetPlayerHUD():GetHearts()
        for pos,PlayerHUDHeart in ipairs(PlayerHUDHearts) do
            -- if the hearts table didn't load correctly, load it
            if not Hearts[pos] then Hearts[pos] = {} end

            -- if the heart sprite is visible
            if PlayerHUDHeart:IsVisible() == true then
                -- register overlay hearts
                Hearts[pos]["EternalHeart"] = PlayerHUDHeart:IsEternalHeartOverlayVisible()
                Hearts[pos]["GoldHeart"] = PlayerHUDHeart:IsGoldenHeartOverlayVisible()

                -- failsafe; ensure the heart is loaded correctly before trying to read it
                if PlayerHUDHeart:GetHeartAnim() then
                    -- save the heart to our hearts table so we can render them all later
                    Hearts[pos]["State"] = PlayerHUDHeart:GetHeartAnim()
                    -- if the heart isn't a tainted heart, register that
                    if HeartManager:GetHeartType(Hearts[pos]) ~= "Tainted Heart" then
                        Hearts[pos]["isTaintedHeart"] = false
                    end
                end
            else
                -- if the heart slot is empty, set everything to empty
                Hearts[pos]["Sprite"] = nil
                Hearts[pos]["State"] = nil
                Hearts[pos]["EternalHeart"] = nil
                Hearts[pos]["GoldHeart"] = nil
                Hearts[pos]["isTaintedHeart"] = nil
            end
        end

        for _,HeartData in pairs(Hearts) do
            -- if the heart exists and isn't a tainted heart
            if HeartData["State"] 
            and HeartData["isTaintedHeart"] ~= true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
                uiSprite:Play(HeartData["State"],true)
                HeartData["Sprite"] = uiSprite
            -- if the heart is a full tainted heart
            elseif HeartManager:GetHeartStatus(HeartData) == "Full" 
            and HeartData["isTaintedHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts_serapher.anm2",true)
                uiSprite:Play("TaintedHeartFull",true)
                HeartData["Sprite"] = uiSprite
            -- if the heart is a half tainted heart
            elseif HeartManager:GetHeartStatus(HeartData) == "Half" 
            and HeartData["isTaintedHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts_serapher.anm2",true)
                uiSprite:Play("TaintedHeartHalf",true)
                HeartData["Sprite"] = uiSprite
            end
            
            -- if there's an eternal heart
            if HeartData["EternalHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
                uiSprite:Play("WhiteHeartOverlay",true)
                HeartData["EternalHeart"] = uiSprite
            end
            -- if there's a gold heart
            if HeartData["GoldHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
                uiSprite:Play("GoldHeartOverlay",true)
                HeartData["GoldHeart"] = uiSprite
            end

            -- if isaac has a mantle
            local player = Isaac.GetPlayer()
            if player:GetEffects():GetCollectibleEffectNum(CollectibleType.COLLECTIBLE_HOLY_MANTLE) > 0 then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
                uiSprite:Play("HolyMantle",true)
                mantleSprite = uiSprite
            end
        end
    end
end

function mod:PostRender()
    -- remove hearts from the floor when picked up
    HeartManager:GetHeartCount()
    for entity,sprite in pairs(entities) do
        sprite:Update()
        sprite:Render(entity.Position)
        if sprite:IsPlaying("Collect") == true and sprite:GetFrame() == HEART_VANISH_FRAME then
            entity:Remove()
            entities[entity] = nil
        end
    end
    
    -- don't load hearts outside of a run
    if shouldLoadHearts == true then
        -- account for the hudoffset setting
        local xOffsetMod = (20 * Options.HUDOffset) + 50
        local yOffsetMod = (20 * Options.HUDOffset) + 13.5

        if Game():GetLevel():GetCurses() & LevelCurse.CURSE_OF_THE_UNKNOWN == LevelCurse.CURSE_OF_THE_UNKNOWN then
            local uiSprite = Sprite()
            uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
            uiSprite:Play("CurseHeart",true)
            uiSprite:Render(Vector(xOffsetMod + 1,yOffsetMod))
        else
            for pos,HeartData in pairs(Hearts) do
                if pos <= 6 and HeartData["Sprite"] then
                    HeartData["Sprite"]:Render(Vector(xOffsetMod + 12 * (pos - 1),yOffsetMod))
                elseif pos > 6 and HeartData["Sprite"] then
                    HeartData["Sprite"]:Render(Vector(xOffsetMod + 12 * (pos - 7),yOffsetMod + 10))
                end
                if HeartData["EternalHeart"] ~= false and HeartData["EternalHeart"] then
                    if pos <= 6 then
                        HeartData["EternalHeart"]:Render(Vector(xOffsetMod + 12 * (pos - 1),yOffsetMod))
                    elseif pos > 6 then
                        HeartData["EternalHeart"]:Render(Vector(xOffsetMod + 12 * (pos - 7),yOffsetMod + 10))
                    end
                end
                if HeartData["GoldHeart"] ~= false and HeartData["GoldHeart"] then
                    if pos <= 6 then
                        HeartData["GoldHeart"]:Render(Vector(xOffsetMod + 12 * (pos - 1),yOffsetMod))
                    elseif pos > 6 then
                        HeartData["GoldHeart"]:Render(Vector(xOffsetMod + 12 * (pos - 7),yOffsetMod + 10))
                    end
                end
            end

            local player = Isaac.GetPlayer()
            if player:GetEffects():GetCollectibleEffectNum(CollectibleType.COLLECTIBLE_HOLY_MANTLE) > 0 then
                mantleSpace = 2
                heartCount = HeartManager:GetHeartCount() / 2
                local _,fracPart = math.modf(heartCount)
                if fracPart == 0.5 then
                    heartCount = heartCount + 0.5
                end

                local xOffsetMod = (20 * Options.HUDOffset) + 50
                local yOffsetMod = (20 * Options.HUDOffset) + 13.5

                if heartCount <= 6 then
                    mantleSprite:Render(Vector(xOffsetMod + 12 * heartCount,yOffsetMod))
                elseif heartCount > 6 then
                    mantleSprite:Render(Vector(xOffsetMod + 12 * (heartCount - 6),yOffsetMod + 10))
                end
            else
                mantleSpace = 0
            end

            if player:GetExtraLives() > 0 then
                if HeartManager:GetHeartCount() <= 12 then
                    xPos = (xOffsetMod - 4) + (HeartManager:GetHeartCount() / 2) * 12
                    yPos = yOffsetMod - 8.5
                else
                    xPos = xOffsetMod + 72
                    yPos = yOffsetMod - 2.5
                end

                if player:HasChanceRevive() == true then
                    xPosRevives = xPosRevives + 7
                    Isaac.RenderText(tostring("x" .. player:GetExtraLives() .. "?"),xPosRevives,yPosRevives,1,1,1,1)
                else
                    Isaac.RenderText(tostring("x" .. player:GetExtraLives()),xPosRevives,yPosRevives,1,1,1,1)
                end
            end
        end
    end
end

-- ^^^ Rendering
---------------------------------------------------------------
-- vvv Functionality

function mod:EntityTakeDMG(Entity,Amount,_,Source,_)
    -- if isaac takes damage
    if Entity:ToPlayer() then
        heartCount = HeartManager:GetHeartCount() / 2
        local _,fracPart = math.modf(heartCount)
        if fracPart == 0.5 then
            heartCount = heartCount + 0.5
        end

        -- find where the last tainted heart is
        lastTaintedHeart = 0
        for pos,HeartData in pairs(Hearts) do
            if HeartData["isTaintedHeart"] == true
            and pos > lastTaintedHeart 
            then
                lastTaintedHeart = pos
            end
        end

        -- if it's at the end of isaac's hearts, and he doesn't have an eternal heart
        if heartCount == lastTaintedHeart 
        and (Hearts[heartCount]["EternalHeart"] == false
        or lastTaintedHeart > 1) 
        then
            -- and it wasn't sacrifice damage
            if sFunc:isSacrificeDamage(Entity,Source) == false then
                -- add deal chance penalty
                Game():GetLevel():SetRedHeartDamage()
            end
        -- if it's at the end of isaac's hearts, and he does have an eternal heart
        elseif heartCount == lastTaintedHeart 
        and Hearts[heartCount]["EternalHeart"] ~= false
        and lastTaintedHeart == 1
        then
            -- and it wasn't sacrifice damage, and it was a whole heart of damage
            if sFunc:isSacrificeDamage(Entity,Source) and Amount == 2 then
                -- add deal chance penalty
                Game():GetLevel():SetRedHeartDamage()
            end
        end
    end
end

-- ^^^ Functionality
---------------------------------------------------------------
-- vvv Spawning

function mod:PostPickupSelection(_,Variant,SubType,RequestedVariant,RequestedSubType,_)
    -- ensure we don't accidentally repeat a tainted heart drop
    pickup = nil

    -- if the pickup spawning is a soul heart
    if (RequestedVariant == 0 or RequestedSubType == 0) -- if it's a random pickup
    and (Variant == PickupVariant.PICKUP_HEART and SubType == HeartSubType.HEART_SOUL) 
    and globalRNG:RandomInt(10) <= 2 -- 3 in 10 chance
    then
        pickup = {CustomEnums.PickupVariant.PICKUP_HEART,CustomEnums.HeartSubType.HEART_TAINTED,true}
    
    -- if the pickup spawning is a half soul heart
    elseif (RequestedVariant == 0 or RequestedSubType == 0) -- if it's a random pickup
    and (Variant == PickupVariant.PICKUP_HEART and SubType == HeartSubType.HEART_HALF_SOUL) 
    and globalRNG:RandomInt(10) <= 2 -- 3 in 10 chance
    then
        pickup = {CustomEnums.PickupVariant.PICKUP_HEART,CustomEnums.HeartSubType.HEART_HALF_TAINTED,true}
    end
    return pickup
end

-- ^^^ Spawning
---------------------------------------------------------------

-- Save Data
mod:AddPriorityCallback(ModCallbacks.MC_PRE_GAME_EXIT, CallbackPriority.EARLY, mod.SaveVariables)
mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.PostGameStarted)

-- Pickup Management
mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, mod.PrePickupCollision, CustomEnums.PickupVariant.PICKUP_HEART)

-- Rendering
mod:AddCallback(ModCallbacks.MC_PRE_PLAYERHUD_RENDER_HEARTS, mod.PrePlayerHUDRenderHearts)
mod:AddCallback(ModCallbacks.MC_PRE_RENDER, mod.PreRender)
mod:AddCallback(ModCallbacks.MC_POST_RENDER, mod.PostRender)

-- Functionality
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.EntityTakeDMG)

-- Spawning
mod:AddCallback(ModCallbacks.MC_POST_PICKUP_SELECTION, mod.PostPickupSelection)

-- HeartManager Function
return HeartManager
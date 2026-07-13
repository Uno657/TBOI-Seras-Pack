--[[
    gonna leave this here in case anybody decides to take a look at this jank-ass code; ts has taken me actual days to do and its still not working, please god help me
      ^^^ update: still not working 2 days later, i keep finding new bugs and edge-cases

    if you want to use this (since there isn't a custom health api as of when i made this), js ask me on discord, user @_serapher, im in the modding of isaac server :)
      ^^^ i will respond asap so dw abt it taking a while
      ^^^ also ill try my best at explaining how it works if you want me to

    TODO:
     - Add holy mantle
     - Move the hearts in accordance to ui scaling

     - Add compatibility
]]

-- vvv HeartManager Functions

local HeartManager = {}
print(Options.HUDOffset)

function HeartManager:GetHeartStatus(HeartData)
    if HeartData then
        if HeartData["State"] then
            if string.find(HeartData["State"],"Half") then
                var = "Half"
            elseif string.find(HeartData["State"],"Full") then
                var = "Full"
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
        if HeartManager:GetHeartCount() < player:GetHeartLimit() then
            player:AddSoulHearts(1)
            local heartCount = HeartManager:GetHeartCount() / 2
            local _,fracPart = math.modf(heartCount)
            if fracPart == 0.5 then
                heartCount = heartCount + 0.5
            end
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
    repeat
        if SaveManager.IsLoaded() == true then
            print("SaveManager loaded!")
            if SaveManager.GetRunSave() and ShouldSave == true then
                SaveManager.GetRunSave().Hearts = {}
                for pos,HeartData in pairs(Hearts) do
                    SaveManager.GetRunSave().Hearts[pos] = {
                        ["isTaintedHeart"] = HeartData["isTaintedHeart"]
                    }
                end
            end
            shouldLoadHearts = false
        end
    until SaveManager.IsLoaded() == true
end

function mod:PostGameStarted(IsContinued)
    entities = {}
    local player = Isaac.GetPlayer()

    if IsContinued == false then
        Hearts = {}
        shouldLoadHearts = true
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

    if EntityPickup.Variant == CustomEnums.PickupVariant.PICKUP_HEART
    and EntityPickup.SubType == CustomEnums.HeartSubType.HEART_TAINTED 
    and heartCount < player:GetHeartLimit() 
    and EntityPickup:GetSprite():IsPlaying("Collect") == false 
    then
        entities[EntityPickup] = EntityPickup:GetSprite()
        EntityPickup:PlayPickupSound()
        entities[EntityPickup]:Play("Collect",true)
        HeartManager:AddTaintedHearts(2)
    elseif EntityPickup.Variant == CustomEnums.PickupVariant.PICKUP_HEART
    and EntityPickup.SubType == CustomEnums.HeartSubType.HEART_HALF_TAINTED 
    and heartCount < player:GetHeartLimit() 
    and EntityPickup:GetSprite():IsPlaying("Collect") == false 
    then
        entities[EntityPickup] = EntityPickup:GetSprite()
        EntityPickup:PlayPickupSound()
        entities[EntityPickup]:Play("Collect",true)
        HeartManager:AddTaintedHearts(1)
    elseif (EntityPickup.SubType == HeartSubType.HEART_SOUL
    or EntityPickup.SubType == HeartSubType.HEART_BLACK
    or EntityPickup.SubType == HeartSubType.HEART_BONE)
    and heartCount == player:GetHeartLimit() 
    and EntityPickup:GetSprite():IsPlaying("Collect") == false 
    then
        for _,HeartData in pairs(Hearts) do
            if HeartManager:GetHeartStatus(HeartData) == "Full" 
            and HeartData["isTaintedHeart"] == true
            then
                hasFullHeart = true
            end
        end

        lastTaintedHeart = 0
        if hasFullHeart == true then
            for pos,HeartData in pairs(Hearts) do
                if HeartData["isTaintedHeart"] == true
                and pos > lastTaintedHeart 
                then
                    lastTaintedHeart = pos
                end
            end
            entities[EntityPickup] = EntityPickup:GetSprite()
            EntityPickup:PlayPickupSound()
            entities[EntityPickup]:Play("Collect",true)
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

function mod:PrePlayerHUDRenderHearts(_,_,_,_,_)
    return true
end

function mod:PreRender()
    if shouldLoadHearts == true then
        local PlayerHUDHearts = Game():GetHUD():GetPlayerHUD():GetHearts()
        for pos,PlayerHUDHeart in ipairs(PlayerHUDHearts) do
            if not Hearts[pos] then Hearts[pos] = {} end
            if PlayerHUDHeart:IsVisible() == true then
                Hearts[pos]["EternalHeart"] = PlayerHUDHeart:IsEternalHeartOverlayVisible()
                Hearts[pos]["GoldHeart"] = PlayerHUDHeart:IsGoldenHeartOverlayVisible()
                if PlayerHUDHeart:GetHeartAnim() then
                    Hearts[pos]["State"] = PlayerHUDHeart:GetHeartAnim()
                    if HeartManager:GetHeartType(Hearts[pos]) ~= "Tainted Heart" then
                        Hearts[pos]["isTaintedHeart"] = false
                    end
                end
            else
                Hearts[pos]["Sprite"] = nil
                Hearts[pos]["State"] = nil
                Hearts[pos]["EternalHeart"] = nil
                Hearts[pos]["GoldHeart"] = nil
                Hearts[pos]["isTaintedHeart"] = nil
            end
        end

        for _,HeartData in pairs(Hearts) do
            if HeartData["State"] 
            and HeartData["isTaintedHeart"] ~= true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
                uiSprite:Play(HeartData["State"],true)
                HeartData["Sprite"] = uiSprite
            elseif HeartManager:GetHeartStatus(HeartData) == "Full" 
            and HeartData["isTaintedHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts_serapher.anm2",true)
                uiSprite:Play("TaintedHeartFull",true)
                HeartData["Sprite"] = uiSprite
            elseif HeartManager:GetHeartStatus(HeartData) == "Half" 
            and HeartData["isTaintedHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts_serapher.anm2",true)
                uiSprite:Play("TaintedHeartHalf",true)
                HeartData["Sprite"] = uiSprite
            end
            
            if HeartData["EternalHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
                uiSprite:Play("WhiteHeartOverlay",true)
                HeartData["EternalHeart"] = uiSprite
            end
            if HeartData["GoldHeart"] == true then
                local uiSprite = Sprite()
                uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
                uiSprite:Play("GoldHeartOverlay",true)
                HeartData["GoldHeart"] = uiSprite
            end

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
    HeartManager:GetHeartCount()
    for entity,sprite in pairs(entities) do
        sprite:Update()
        sprite:Render(entity.Position)
        if sprite:IsPlaying("Collect") == true and sprite:GetFrame() == 5 then
            entity:Remove()
            entities[entity] = nil
        end
    end
    
    if shouldLoadHearts == true then
        local xStart = (20 * Options.HUDOffset) + 50
        local yStart = (20 * Options.HUDOffset) + 15.5
        if Game():GetLevel():GetCurses() & LevelCurse.CURSE_OF_THE_UNKNOWN == LevelCurse.CURSE_OF_THE_UNKNOWN then
            local uiSprite = Sprite()
            uiSprite:Load("gfx/ui/ui_hearts.anm2",true)
            uiSprite:Play("CurseHeart",true)
            uiSprite:Render(Vector(xStart + 1,yStart))
        else
            for pos,HeartData in pairs(Hearts) do
                if pos <= 6 and HeartData["Sprite"] then
                    HeartData["Sprite"]:Render(Vector(xStart + 12 * (pos - 1),yStart))
                elseif pos > 6 and HeartData["Sprite"] then
                    HeartData["Sprite"]:Render(Vector(xStart + 12 * (pos - 7),yStart + 10))
                end
                if HeartData["EternalHeart"] ~= false and HeartData["EternalHeart"] then
                    if pos <= 6 then
                        HeartData["EternalHeart"]:Render(Vector(xStart + 12 * (pos - 1),yStart))
                    elseif pos > 6 then
                        HeartData["EternalHeart"]:Render(Vector(xStart + 12 * (pos - 7),yStart + 10))
                    end
                end
                if HeartData["GoldHeart"] ~= false and HeartData["GoldHeart"] then
                    if pos <= 6 then
                        HeartData["GoldHeart"]:Render(Vector(xStart + 12 * (pos - 1),yStart))
                    elseif pos > 6 then
                        HeartData["GoldHeart"]:Render(Vector(xStart + 12 * (pos - 7),yStart + 10))
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

                if heartCount <= 6 then
                    mantleSprite:Render(Vector(54 + 12 * (heartCount),15.5))
                elseif heartCount > 6 then
                    mantleSprite:Render(Vector(54 + 12 * (heartCount - 6)),25.5)
                end
            else
                mantleSpace = 0
            end

            if player:GetExtraLives() > 0 then
                if HeartManager:GetHeartCount() <= 12 then
                    xPosRevives = 50 + ((HeartManager:GetHeartCount() + mantleSpace) / 2) * 12
                    yPosRevives = 7.5
                else
                    xPosRevives = 122
                    yPosRevives = 13
                    xPos = (xStart - 4) + (HeartManager:GetHeartCount() / 2) * 12
                    yPos = yStart - 8.5
                else
                    xPos = xStart + 72
                    yPos = yStart - 2.5
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
    if Entity:ToPlayer() then
        local player = Entity:ToPlayer()
        heartCount = HeartManager:GetHeartCount() / 2
        local _,fracPart = math.modf(heartCount)
        if fracPart == 0.5 then
            heartCount = heartCount + 0.5
        end
        lastTaintedHeart = 0
        for pos,HeartData in pairs(Hearts) do
            if HeartData["isTaintedHeart"] == true
            and pos > lastTaintedHeart 
            then
                lastTaintedHeart = pos
            end
        end
        if heartCount == lastTaintedHeart 
        and (Hearts[heartCount]["EternalHeart"] == false
        or lastTaintedHeart > 1) 
        then
            if sFunc:isSacrificeDamage(Entity,Source) == false then
                Game():GetLevel():SetRedHeartDamage()
            end
        elseif heartCount == lastTaintedHeart 
        and Hearts[heartCount]["EternalHeart"] ~= false
        and lastTaintedHeart == 1
        then
            if sFunc:isSacrificeDamage(Entity,Source) and Amount == 2 then
                Game():GetLevel():SetRedHeartDamage()
            end
        end
    end
end

-- ^^^ Functionality
---------------------------------------------------------------
-- vvv Spawning

function mod:PostPickupSelection(_,Variant,SubType,RequestedVariant,RequestedSubType,_)
    pickup = nil
    if (RequestedVariant == 0 or RequestedSubType == 0) 
    and (Variant == PickupVariant.PICKUP_HEART and SubType == HeartSubType.HEART_SOUL) 
    and globalRNG:RandomInt(10) <= 2 -- 3 in 10 chance
    then
        pickup = {CustomEnums.PickupVariant.PICKUP_HEART,CustomEnums.HeartSubType.HEART_TAINTED,true}
    elseif (RequestedVariant == 0 or RequestedSubType == 0) 
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
mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, mod.PrePickupCollision, PickupVariant.PICKUP_HEART)

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
changeAngelRoomChance = 0
usedD8 = false
shouldEvaluateCache = false

if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_UNSTABLE_FILE, "# Rerolls all of Isaac's stats upon entering a new room")
end

function mod:SaveVariables()
    if SaveManager.GetRunSave() then
        if not multDamage then multDamage = 1 end
        if not multMaxFireDelay then multMaxFireDelay = 1 end
        if not multRange then multRange = 1 end
        if not multSpeed then multSpeed = 1 end
        if not multShotSpeed then multShotSpeed = 1 end
        if not multLuck then multLuck = 1 end

        SaveManager.GetRunSave().UnstableFile = {
            multDamage = multDamage,
            multMaxFireDelay = multMaxFireDelay,
            multRange = multRange,
            multSpeed = multSpeed,
            multShotSpeed = multShotSpeed,
            multLuck = multLuck
        }
        shouldEvaluateCache = true
    end
end

function mod:PostGameStarted(IsContinued)
    changeAngelRoomChance = 0
    usedD8 = false

    if IsContinued == true and SaveManager.GetRunSave() then
        local player = Isaac.GetPlayer()
        multDamage = SaveManager.GetRunSave().UnstableFile.multDamage
        multMaxFireDelay = SaveManager.GetRunSave().UnstableFile.multMaxFireDelay
        multRange = SaveManager.GetRunSave().UnstableFile.multRange
        multSpeed = SaveManager.GetRunSave().UnstableFile.multSpeed
        multShotSpeed = SaveManager.GetRunSave().UnstableFile.multShotSpeed
        multLuck = SaveManager.GetRunSave().UnstableFile.multLuck
        shouldEvaluateCache = true
        player:AddCacheFlags(CacheFlag.CACHE_ALL)
        player:EvaluateItems()
    elseif IsContinued == false then
        if not multDamage then multDamage = 1 end
        if not multMaxFireDelay then multMaxFireDelay = 1 end
        if not multRange then multRange = 1 end
        if not multSpeed then multSpeed = 1 end
        if not multShotSpeed then multShotSpeed = 1 end
        if not multLuck then multLuck = 1 end
        shouldEvaluateCache = true
    end
end

function mod:LateEvaluateCache(player, cacheFlag)
    if player:HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_UNSTABLE_FILE) and shouldEvaluateCache == true then
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage * multDamage
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay * multMaxFireDelay
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange * multRange
        end
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed * multSpeed
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed * multShotSpeed
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck * multLuck
        end
    end
end

function mod:PostNewRoom()
    local player = Isaac.GetPlayer(0)
    local room = Game():GetRoom()
    if room:IsFirstVisit() then
        local rng = player:GetCollectibleRNG(CustomEnums.CollectibleType.COLLECTIBLE_UNSTABLE_FILE)
        multDamage = (rng:RandomInt(4) + 1) * 0.5
        multMaxFireDelay = (rng:RandomInt(4) + 1) * 0.5
        multRange = (rng:RandomInt(4) + 1) * 0.5
        multSpeed = (rng:RandomInt(4) + 1) * 0.5
        shouldEvaluateCache = true
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE | CacheFlag.CACHE_FIREDELAY | CacheFlag.CACHE_RANGE | CacheFlag.CACHE_SPEED)
        player:EvaluateItems()
    end
end

function mod:PostNewLevel()
    local level = Game():GetLevel()
    level:AddAngelRoomChance(0 - changeAngelRoomChance)
    changeAngelRoomChance = 0
end

function mod:usedD8(_)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_UNSTABLE_FILE) then
        local rng = player:GetCollectibleRNG(CustomEnums.CollectibleType.COLLECTIBLE_UNSTABLE_FILE)
        multShotSpeed = rng:RandomInt(4) * 0.5 * player.ShotSpeed
        multLuck = rng:RandomInt(4) * 0.5 * player.Luck
        player:AddCacheFlags(CacheFlag.CACHE_SHOTSPEED | CacheFlag.CACHE_LUCK)

        local level = Game():GetLevel()
        if rng:RandomInt(10) == 1 then
            level:ApplyBlueMapEffect()
        end
        if rng:RandomInt(10) == 1 then
            level:ApplyCompassEffect()
        end
        if rng:RandomInt(10) == 1 then
            level:ApplyMapEffect()
        end
        if rng:RandomInt(10) == 1 then
            local preAngelRoomChance = level:GetAngelRoomChance()
            level:AddAngelRoomChance(rng:RandomInt(3) + 1 - 2)
            changeAngelRoomChance = level:GetAngelRoomChance() - preAngelRoomChance + changeAngelRoomChance -- Grabs how much the Angel Room chance changed by
        end

        local heartTypes = {
            [1] = "Heart Container",
            [2] = "Soul Heart",
            [3] = "Black Heart"
        }
        if Isaac.GetPersistentGameData():Unlocked(391) == true then heartTypes[4] = "Bone Heart" end

        local SoulHearts = player:GetSoulHearts()
        local EffectiveMaxHearts = player:GetEffectiveMaxHearts()

        if player:GetEffectiveMaxHearts() >= 1 then
            player:AddSoulHearts(0 - player:GetSoulHearts())
        else
            player:AddMaxHearts(1)
            player:AddSoulHearts(0 - player:GetSoulHearts())
        end

        countMaxHearts = 0
        countSoulHearts = 0
        countBlackHearts = 0
        countBoneHearts = 0
        countTotalHearts = 0
        Attempts = 0
        repeat
            Attempts = Attempts + 1
            rand = rng:RandomInt(#heartTypes) + 1
            if heartTypes[rand] == "Heart Container" and (EffectiveMaxHearts + SoulHearts) - countTotalHearts >= 2 then
                countMaxHearts = countMaxHearts + 2
                countTotalHearts = countTotalHearts + 2
            elseif heartTypes[rand] == "Soul Heart" then
                countSoulHearts = countSoulHearts + 1
                countTotalHearts = countTotalHearts + 1
            elseif heartTypes[rand] == "Black Heart" then
                countBlackHearts = countBlackHearts + 1
                countTotalHearts = countTotalHearts + 1
            elseif heartTypes[rand] == "Bone Heart" and (EffectiveMaxHearts + SoulHearts) - countTotalHearts >= 2 then
                countBoneHearts = countBoneHearts + 1
                countTotalHearts = countTotalHearts + 2
            end
        until countTotalHearts >= (EffectiveMaxHearts + SoulHearts) or Attempts == 20

        if Attempts == 20 then
            countSoulHearts = countSoulHearts + (EffectiveMaxHearts + SoulHearts - countTotalHearts)
        end
        local countRedHearts = player:GetHearts() + SoulHearts

        player:AddMaxHearts(0 - player:GetMaxHearts() + countMaxHearts)
        player:AddSoulHearts(countSoulHearts)
        player:AddBlackHearts(countBlackHearts)
        if Isaac.GetPersistentGameData():Unlocked(Achievement.BONE_HEARTS) == true then
            player:AddBoneHearts(0 - player:GetBoneHearts() + countBoneHearts)
        end
        player:AddHearts(countRedHearts)
    end
end

mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.PostNewRoom)
mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.PostGameStarted)
mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.usedD8, CollectibleType.COLLECTIBLE_D8)
mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, mod.PostNewLevel)
mod:AddPriorityCallback(ModCallbacks.MC_EVALUATE_CACHE, CallbackPriority.LATE, mod.LateEvaluateCache)
mod:AddPriorityCallback(ModCallbacks.MC_PRE_GAME_EXIT, CallbackPriority.EARLY, mod.SaveVariables)
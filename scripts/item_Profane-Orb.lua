local itemConfig = Isaac.GetItemConfig()
local shouldEvaluateCache = false

if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_PROFANE_ORB, "#{{ArrowUp}} Grants a +0.1 {{DamageSmall}} and {{TearsSmall}} multiplier for every {{Quality0}} item collected#{{ArrowUp}} Grants a +0.05 {{DamageSmall}} and {{TearsSmall}} multiplier for every {{Quality1}} item collected#{{Warning}} Forces all items to be {{Quality2}} or lower")
end

function mod:SaveVariables()
    if SaveManager.GetRunSave() then
        SaveManager.GetRunSave().lowQualityItems = lowQualityItems
    end
end

function mod:PostGameStarted(IsContinued)
    if IsContinued == false then
        lowQualityItems = 0
        shouldEvaluateCache = true
    elseif IsContinued == true and SaveManager.GetRunSave() then
        local player = Isaac.GetPlayer()
        lowQualityItems = SaveManager.GetRunSave().lowQualityItems
        shouldEvaluateCache = true
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE | CacheFlag.CACHE_FIREDELAY)
        player:EvaluateItems()
    end
end

function mod:PostGetCollectible(CollectibleType,ItemPoolType,_,_)
    local player = Isaac.GetPlayer()
    if player:HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_PROFANE_ORB) then
        if itemConfig:GetCollectible(CollectibleType).Quality >= 2 then
            if itemConfig:GetCollectible(CollectibleType).Quality == 2 and player:GetCollectibleRNG(CustomEnums.CollectibleType.COLLECTIBLE_PROFANE_ORB):RandomInt(3) == 1 then
                repeat
                    CollectibleType = Game():GetItemPool():GetCollectible(ItemPoolType)
                until itemConfig:GetCollectible(CollectibleType).Quality < 2
            elseif itemConfig:GetCollectible(CollectibleType).Quality > 2 then
                repeat
                    CollectibleType = Game():GetItemPool():GetCollectible(ItemPoolType)
                until itemConfig:GetCollectible(CollectibleType).Quality < 3
            end
        end
    end
    return CollectibleType
end

function mod:PostAddCollectible(CollectibleType,_,_,_,_,player)
    if itemConfig:GetCollectible(CollectibleType).Quality == 1 then
        lowQualityItems = lowQualityItems + 0.5
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE | CacheFlag.CACHE_FIREDELAY)
        player:EvaluateItems()
    elseif itemConfig:GetCollectible(CollectibleType).Quality == 0 then
        lowQualityItems = lowQualityItems + 1
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE | CacheFlag.CACHE_FIREDELAY)
        player:EvaluateItems()
    end
end

function mod:PostTriggerCollectibleRemoved(player, CollectibleType)
    if itemConfig:GetCollectible(CollectibleType).Quality == 1 then
        lowQualityItems = lowQualityItems - 0.5
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE | CacheFlag.CACHE_FIREDELAY)
        player:EvaluateItems()
    elseif itemConfig:GetCollectible(CollectibleType).Quality == 0 then
        lowQualityItems = lowQualityItems - 1
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE | CacheFlag.CACHE_FIREDELAY)
        player:EvaluateItems()
    end
end

function mod:StatMultiplier(player, flag)
    if player:HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_PROFANE_ORB) and shouldEvaluateCache == true then
        if flag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage * (1 + lowQualityItems / 10)
        elseif flag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay / (1 + lowQualityItems / 10)
        end
    end
end

mod:AddCallback(ModCallbacks.MC_POST_GET_COLLECTIBLE, mod.PostGetCollectible)
mod:AddCallback(ModCallbacks.MC_POST_ADD_COLLECTIBLE, mod.PostAddCollectible)
mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.PostGameStarted)
mod:AddCallback(ModCallbacks.MC_POST_TRIGGER_COLLECTIBLE_REMOVED, mod.PostTriggerCollectibleRemoved)
mod:AddPriorityCallback(ModCallbacks.MC_PRE_GAME_EXIT, CallbackPriority.EARLY, mod.SaveVariables)
mod:AddPriorityCallback(ModCallbacks.MC_EVALUATE_CACHE, CallbackPriority.LATE, mod.StatMultiplier)
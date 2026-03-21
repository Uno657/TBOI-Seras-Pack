--[[
TODO: See item_Unstable-File.lua for how to implement achievements/achievement checks
]]

if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_ANATOMY_TEXTBOOK, "#{{EmptyBoneHeart}} Grants 1 bone heart")
end

function mod:UseItem(_)
    Isaac.GetPlayer(0):AddBoneHearts(1)
    SFXManager():Play(8)
    return {
        Discharge = true,
        Remove = false,
        ShowAnim = true
    }
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseItem, CustomEnums.CollectibleType.COLLECTIBLE_ANATOMY_TEXTBOOK)
if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_PANACEA, "#{{HealingRed}} Full health#{{TaintedHeart}} Fills missing health with tainted hearts")
end

function mod:PostAddCollectible(_,_,_,_,_,player)
    player:AddHearts(player:GetEffectiveMaxHearts() - player:GetHearts())
    local heartCount = player:GetEffectiveMaxHearts() + player:GetSoulHearts()
    HeartManager:AddTaintedHearts(player:GetHeartLimit() - heartCount)
end

mod:AddCallback(ModCallbacks.MC_POST_ADD_COLLECTIBLE, mod.PostAddCollectible, CustomEnums.CollectibleType.COLLECTIBLE_PANACEA)
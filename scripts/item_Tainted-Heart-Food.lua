if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_LUNCH_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_DINNER_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_DESSERT_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_BREAKFAST_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_ROTTEN_MEAT_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_SNACK_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_MIDNIGHT_SNACK_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_SUPPER_QUESTION, "#{{TaintedHeart}} +2 Tainted Hearts")
end

function mod:PostAddCollectible(CollectibleType,_,_,_,_,_)
    if CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_LUNCH_QUESTION 
    or CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_DINNER_QUESTION 
    or CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_DESSERT_QUESTION 
    or CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_BREAKFAST_QUESTION 
    or CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_ROTTEN_MEAT_QUESTION 
    or CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_SNACK_QUESTION 
    or CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_MIDNIGHT_SNACK_QUESTION 
    or CollectibleType == CustomEnums.CollectibleType.COLLECTIBLE_SUPPER_QUESTION
    then
        HeartManager:AddTaintedHearts(4)
    end
end

mod:AddCallback(ModCallbacks.MC_POST_ADD_COLLECTIBLE, mod.PostAddCollectible)
if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_MOTHERS_BLESSING, "# Has a chance to spawn a maggot after an enemy dies#{{Luck}} 100% chance at 5 luck")
end

function mod:PostEntityKill(entity)
    local player = Isaac.GetPlayer()
    chance = -2 * player.Luck + 20 -- this formula makes it so that it has a 50% chance at 0 luck and a 100% chance at 5 luck
    if sFunc:isBoss(entity) == true
    and entity.Type ~= 17 
    and entity:IsEnemy() == true 
    and entity:GetEntityFlags() & EntityFlag.FLAG_FRIENDLY ~= EntityFlag.FLAG_FRIENDLY 
    and player:HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_MOTHERS_BLESSING) 
    and math.random(chance) <= 10 
    then
        local spawnSeed = Game():GetRoom():GetSpawnSeed()
        if entity.MaxHitPoints >= 1 and entity.MaxHitPoints <= 18 then
            local charmedEnemy = Game():Spawn(EntityType.ENTITY_SMALL_MAGGOT,0,entity.Position,Vector(0,0),nil,0,spawnSeed)
            charmedEnemy:AddCharmed(EntityRef(player), -1)
        elseif entity.MaxHitPoints >= 19 and entity.MaxHitPoints <= 36 then
            local charmedEnemy = Game():Spawn(EntityType.ENTITY_MAGGOT,0,entity.Position,Vector(0,0),nil,0,spawnSeed)
            charmedEnemy:AddCharmed(EntityRef(player), -1)
        elseif entity.MaxHitPoints >= 37 and entity.MaxHitPoints <= 54 then
            local charmedEnemy = Game():Spawn(EntityType.ENTITY_CHARGER,0,entity.Position,Vector(0,0),nil,0,spawnSeed)
            charmedEnemy:AddCharmed(EntityRef(player), -1)
        elseif entity.MaxHitPoints >= 55 and entity.MaxHitPoints <= 71 then
            local charmedEnemy = Game():Spawn(EntityType.ENTITY_SPITTY,0,entity.Position,Vector(0,0),nil,0,spawnSeed)
            charmedEnemy:AddCharmed(EntityRef(player), -1)
        elseif entity.MaxHitPoints >= 72 and entity.MaxHitPoints <= 89 then
            local charmedEnemy = Game():Spawn(EntityType.ENTITY_CONJOINED_SPITTY,0,entity.Position,Vector(0,0),nil,0,spawnSeed)
            charmedEnemy:AddCharmed(EntityRef(player), -1)
        elseif entity.MaxHitPoints >= 90 and entity.MaxHitPoints <= 107 then
            local charmedEnemy = Game():Spawn(EntityType.ENTITY_CHARGER_L2,0,entity.Position,Vector(0,0),nil,0,spawnSeed)
            charmedEnemy:AddCharmed(EntityRef(player), -1)
        elseif entity.MaxHitPoints >= 108 then -- This one spawns a tainted spitty, idk why it's a variant rather than an entirely new type
            local charmedEnemy = Game():Spawn(EntityType.ENTITY_SPITTY,1,entity.Position,Vector(0,0),nil,0,spawnSeed)
            charmedEnemy:AddCharmed(EntityRef(player), -1)
        end
    end
end

mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, mod.PostEntityKill)
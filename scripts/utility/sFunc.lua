local sFunc = {}

---------------------------------------------------------------
-- vvv getEntry()
--[[
Used By:
    item_Enemy-Spindown.lua
    item_Style-Meter.lua
    sFunc:getIndex()
    sFunc:isValidEntity()
]]
function sFunc:getEntry(table,index)
    var = nil
    for i,v in ipairs(table) do
        if i == index then
            var = v
            break
        end
    end
    return var
end

---------------------------------------------------------------
-- vvv isFamineChargeDamage()
--[[
Used By:
    item_Style-Meter.lua
]]
function sFunc:isFamineChargeDamage(Entity,Source)
    bool = nil
    if Source.Type == EntityType.ENTITY_NULL and Source.Variant == 0 then
        for i,entity in ipairs(Isaac.GetRoomEntities()) do
            if entity.Type == EntityType.ENTITY_FAMINE then
                if Vector(entity.Position):Distance(Entity.Position) < 1 then
                    bool = true
                    break
                end
            end
        end
    end
    if bool ~= true then
        bool = false
    end
    return bool
end

---------------------------------------------------------------
-- vvv isSacrificeSpikeDamage()
--[[
Used By:
    sFunc:isSacrificeDamage()
]]
function sFunc:isSacrificeSpikeDamage(Entity,Source)
    bool = nil
    local player = Entity:ToPlayer()
    if player.Position.X >= 300 and player.Position.X <= 338
    and player.Position.Y >= 261 and player.Position.Y <= 397 
    then
        isCentreSpike = true
    end

    local roomType = Game():GetRoom():GetType()
    if roomType == RoomType.ROOM_DEVIL 
    and player:HasCollectible(CollectibleType.COLLECTIBLE_SANGUINE_BOND) == true 
    then
        isSanguineBondActive = true
    end

    if isCentreSpike and (roomType == RoomType.ROOM_SACRIFICE or isSanguineBondActive) then
        bool = true
        isCentreSpike = nil
        isSanguineBondActive = nil
    else
        bool = false
        isCentreSpike = nil
        isSanguineBondActive = nil
    end
    return bool
end

---------------------------------------------------------------
-- vvv isSacrificeDamage()
--[[
Used By:
    item_Style-Meter.lua
    pickup_Tainted-Heart.lua
]]
function sFunc:isSacrificeDamage(Entity,Source)
    bool = nil
    if ((Source.Type == EntityType.ENTITY_NULL and Source.Variant == 0) -- Curse room spikes, self damage actives
    or (Source.Type == EntityType.ENTITY_SLOT and Source.Variant == SlotVariant.BLOOD_DONATION_MACHINE)
    or (Source.Type == EntityType.ENTITY_SLOT and Source.Variant == SlotVariant.DEVIL_BEGGAR)
    or (Source.Type == EntityType.ENTITY_SLOT and Source.Variant == SlotVariant.HELL_GAME)
    or sFunc:isSacrificeSpikeDamage(Entity) == true) -- Sac room spikes and sanguine bond spikes
    then
        bool = true
    else
        bool = false
    end
    return bool
end

---------------------------------------------------------------
-- vvv getIndex()
--[[
Used By:
    item_Enemy-Spindown.lua
]]
function sFunc:getIndex(table,value)
    var = nil
    for i,v in ipairs(table) do
        lap = 0
        if type(v) ~= type(value) then
            break
        end

        if type(v) == "table" then
            if #v ~= #value then
                break
            end

            repeat
                lap = lap + 1
                if sFunc:getEntry(v,lap) == sFunc:getEntry(value,lap) then
                    continue = true
                else
                    continue = false
                end
            until lap == #v or continue == false

            if continue == true then
                var = i
                break
            end
        else
            if v == value then
                var = i
                break
            end
        end
    end
    return var
end

---------------------------------------------------------------
-- vvv isValidEntity()
--[[
Used By:
    item_Enemy-Spindown.lua
]]
function sFunc:isValidEntity(entity,table)
    bool = nil
    for i,EntityID in ipairs(table) do
        local Type = sFunc:getEntry(EntityID,1)
        local Variant = sFunc:getEntry(EntityID,2)
        local SubType = sFunc:getEntry(EntityID,3)
        if entity.Type == Type and entity.Variant == Variant and entity.SubType == SubType then
            bool = true
            break
        else
            bool = false
        end
    end
    return bool
end

---------------------------------------------------------------
-- vvv isBoss()
--[[
Used By:
    item_Maggot-Infestation.lua
]]
function sFunc:isBoss(entity)
    bool = nil
    if entity:ToNPC() then
        if entity:ToNPC():IsBoss() == true then
            bool = true
        end
    end

    if bool ~= true then
        bool = false
    end
    return bool
end

---------------------------------------------------------------
-- vvv isFamiliarProjectile()
--[[
Used By:
    item_Style-Meter.lua
    sFunc:isPlayerProjectile()
]]

FamiliarProjectiles = {}

function sFunc:isFamiliarProjectile(entity)
    bool = nil
    for i,projectile in ipairs(FamiliarProjectiles) do
        if projectile == GetPtrHash(entity) then
            bool = true
            break
        else
            bool = false
        end
    end
    return bool
end

function mod:PostFamiliarFireBrimstone(EntityLaser)
    table.insert(FamiliarProjectiles,GetPtrHash(EntityLaser))
end

function mod:PostFamiliarFireProjectile(EntityTear)
    table.insert(FamiliarProjectiles,GetPtrHash(EntityTear))
end

function mod:PostFamiliarFireTechLaser(EntityLaser)
    table.insert(FamiliarProjectiles,GetPtrHash(EntityLaser))
end

mod:AddCallback(ModCallbacks.MC_POST_FAMILIAR_FIRE_BRIMSTONE, mod.PostFamiliarFireBrimstone)
mod:AddCallback(ModCallbacks.MC_POST_FAMILIAR_FIRE_PROJECTILE, mod.PostFamiliarFireProjectile)
mod:AddCallback(ModCallbacks.MC_POST_FAMILIAR_FIRE_TECH_LASER, mod.PostFamiliarFireTechLaser)

---------------------------------------------------------------
-- vvv isPlayerProjectile()
--[[
Used By:
    item_Style-Meter.lua
]]

PlayerProjectiles = {}

function sFunc:isPlayerProjectile(entity)
    bool = nil
    for i,projectile in ipairs(PlayerProjectiles) do
        if projectile == GetPtrHash(entity) then
            bool = true
            break
        else
            bool = false
        end
    end
    return bool
end

function mod:PostFireTear(EntityTear)
    if sFunc:isFamiliarProjectile(EntityTear) == false then
        table.insert(PlayerProjectiles,GetPtrHash(EntityTear))
    end
end

mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.PostFireTear)

---------------------------------------------------------------
-- vvv isEntry()
--[[
Used By:
    item_Style-Meter.lua
]]

function sFunc:isEntry(table,value)
    bool = nil
    for k,v in pairs(table) do
        if v == value then
            bool = true
            break
        end
    end

    if bool ~= true then
        bool = false
    end
    return bool
end

---------------------------------------------------------------

return sFunc
-- TODO: fix up tear_poop.anm2, I changed the sprite file to only contain the necessary sprites which broke it

local ITEM_CONFIG = Isaac.GetItemConfig():GetCollectible(CustomEnums.CollectibleType.COLLECTIBLE_POOP_BABY)
local RECOMMENDED_SHIFT_IDX = 35

local SHOOTING_COOLDOWN = 16
local TEAR_SPEED = 10
local TEAR_SCALE = 0.8
local TEAR_DAMAGE = 3

PoopTears = {}

if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_POOP_BABY, "# Grants a familiar that fires tears that have a chance to turn enemies into poop")
end

function mod:EvaluateCache(player,flags)
    local count = player:GetEffects():GetCollectibleEffectNum(CustomEnums.CollectibleType.COLLECTIBLE_POOP_BABY) + player:GetCollectibleNum(CustomEnums.CollectibleType.COLLECTIBLE_POOP_BABY)
    local rng = RNG()
    rng:SetSeed(math.max(Random(),1),RECOMMENDED_SHIFT_IDX)

    player:CheckFamiliar(CustomEnums.FamiliarVariant.POOP_BABY,count,rng,ITEM_CONFIG)
end

function mod:FamiliarInit(familiar)
    familiar:AddToFollowers()
end

function mod:FamiliarUpdate(familiar)
    local sprite = familiar:GetSprite()

    local fireDirection = familiar.Player:GetFireDirection()
    local direction
    local shootAnim
    local doFlip = false

    if fireDirection == Direction.LEFT then
        direction = Vector(-1,0)
        shootAnim = "FloatShootSide"
        doFlip = true
    elseif fireDirection == Direction.RIGHT then
        direction = Vector(1,0)
        shootAnim = "FloatShootSide"
    elseif fireDirection == Direction.DOWN then
        direction = Vector(0,1)
        shootAnim = "FloatShootDown"
    elseif fireDirection == Direction.UP then
        direction = Vector(0,-1)
        shootAnim = "FloatShootUp"
    end

    if direction ~= nil and familiar.FireCooldown == 0 then
        local tear = familiar:FireProjectile(direction)
        table.insert(PoopTears,GetPtrHash(tear))
        tear.CollisionDamage = TEAR_DAMAGE

        local tearSprite = tear:GetSprite()
        tearSprite:Load("gfx/009.003_puke projectile.anm2",true)
        tearSprite:Play("RegularTear4",true)

        familiar.FireCooldown = SHOOTING_COOLDOWN

        sprite.FlipX = doFlip
        sprite:Play(shootAnim,true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown",true)
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1,0)
end

function mod:EntityTakeDMG(entity,Amount,DamageFlags,Source,CountdownFrames)
    for i,projectile in ipairs(PoopTears) do
        if projectile == GetPtrHash(Source.Entity) then
            if Isaac.GetPlayer():GetCollectibleRNG(CustomEnums.CollectibleType.COLLECTIBLE_POOP_BABY):RandomInt(7) == 1 
            and entity:IsBoss() == false 
            and entity:IsInvincible() == false
            then
                Game():Spawn(EntityType.ENTITY_POOP,0,entity.Position,Vector.Zero,nil,0,entity.InitSeed)
                entity:Remove()
                break
            else
                break
            end
        end
    end
end

mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.EvaluateCache, CacheFlag.CACHE_FAMILIARS)
mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, mod.FamiliarInit, CustomEnums.FamiliarVariant.POOP_BABY)
mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, mod.FamiliarUpdate, CustomEnums.FamiliarVariant.POOP_BABY)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.EntityTakeDMG)
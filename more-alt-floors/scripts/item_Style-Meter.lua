if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER, "# Adds a style rank to the player's HUD# The style rank increases via doing stylish things, such as killing enemies quickly or with the environment# Achieving a style rank above {{ColorGray}}Lame...{{CR}} will grant a reward upon room clear# The higher your rank, the better the reward")
end

RuneList = {
    Card.RUNE_HAGALAZ,
    Card.RUNE_JERA,
    Card.RUNE_EHWAZ,
    Card.RUNE_DAGAZ,
    Card.RUNE_ANSUZ,
    Card.RUNE_PERTHRO,
    Card.RUNE_BERKANO,
    Card.RUNE_ALGIZ,
    Card.RUNE_BLANK,
    Card.RUNE_BLACK,
    Card.CARD_SOUL_ISAAC,
    Card.CARD_SOUL_MAGDALENE,
    Card.CARD_SOUL_CAIN,
    Card.CARD_SOUL_JUDAS,
    Card.CARD_SOUL_BLUEBABY,
    Card.CARD_SOUL_EVE,
    Card.CARD_SOUL_SAMSON,
    Card.CARD_SOUL_AZAZEL,
    Card.CARD_SOUL_LAZARUS,
    Card.CARD_SOUL_EDEN,
    Card.CARD_SOUL_LOST,
    Card.CARD_SOUL_LILITH,
    Card.CARD_SOUL_KEEPER,
    Card.CARD_SOUL_APOLLYON,
    Card.CARD_SOUL_FORGOTTEN,
    Card.CARD_SOUL_BETHANY,
    Card.CARD_SOUL_JACOB
}
SpecialCardList = {
    Card.CARD_CLUBS_2,
    Card.CARD_DIAMONDS_2,
    Card.CARD_SPADES_2,
    Card.CARD_HEARTS_2,
    Card.CARD_ACE_OF_CLUBS,
    Card.CARD_ACE_OF_DIAMONDS,
    Card.CARD_ACE_OF_SPADES,
    Card.CARD_ACE_OF_HEARTS,
    Card.CARD_JOKER,
    Card.CARD_CHAOS,
    Card.CARD_CREDIT,
    Card.CARD_RULES,
    Card.CARD_HUMANITY,
    Card.CARD_SUICIDE_KING,
    Card.CARD_GET_OUT_OF_JAIL,
    Card.CARD_QUESTIONMARK,
    Card.CARD_DICE_SHARD,
    Card.CARD_EMERGENCY_CONTACT,
    Card.CARD_HOLY,
    Card.CARD_HUGE_GROWTH,
    Card.CARD_ANCIENT_RECALL,
    Card.CARD_ERA_WALK,
    Card.CARD_CRACKED_KEY,
    Card.CARD_QUEEN_OF_HEARTS,
    Card.CARD_WILD
}
ReverseCardList = {
    Card.CARD_REVERSE_FOOL,
    Card.CARD_REVERSE_MAGICIAN,
    Card.CARD_REVERSE_HIGH_PRIESTESS,
    Card.CARD_REVERSE_EMPRESS,
    Card.CARD_REVERSE_EMPEROR,
    Card.CARD_REVERSE_HIEROPHANT,
    Card.CARD_REVERSE_LOVERS,
    Card.CARD_REVERSE_CHARIOT,
    Card.CARD_REVERSE_JUSTICE,
    Card.CARD_REVERSE_HERMIT,
    Card.CARD_REVERSE_WHEEL_OF_FORTUNE,
    Card.CARD_REVERSE_STRENGTH,
    Card.CARD_REVERSE_HANGED_MAN,
    Card.CARD_REVERSE_DEATH,
    Card.CARD_REVERSE_TEMPERANCE,
    Card.CARD_REVERSE_DEVIL,
    Card.CARD_REVERSE_TOWER,
    Card.CARD_REVERSE_STARS,
    Card.CARD_REVERSE_MOON,
    Card.CARD_REVERSE_SUN,
    Card.CARD_REVERSE_JUDGEMENT,
    Card.CARD_REVERSE_WORLD
}
NormalCardList = {
    Card.CARD_FOOL,
    Card.CARD_MAGICIAN,
    Card.CARD_HIGH_PRIESTESS,
    Card.CARD_EMPRESS,
    Card.CARD_EMPEROR,
    Card.CARD_HIEROPHANT,
    Card.CARD_LOVERS,
    Card.CARD_CHARIOT,
    Card.CARD_JUSTICE,
    Card.CARD_HERMIT,
    Card.CARD_WHEEL_OF_FORTUNE,
    Card.CARD_STRENGTH,
    Card.CARD_HANGED_MAN,
    Card.CARD_DEATH,
    Card.CARD_TEMPERANCE,
    Card.CARD_DEVIL,
    Card.CARD_TOWER,
    Card.CARD_STARS,
    Card.CARD_MOON,
    Card.CARD_SUN,
    Card.CARD_JUDGEMENT,
    Card.CARD_WORLD
}

Tier5Pickups = {
    {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_GIGA},
    {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_GOLDEN},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_ETERNAL},
    {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_GOLDEN},
    {PickupVariant.PICKUP_KEY,KeySubType.KEY_GOLDEN},
    {PickupVariant.PICKUP_OLDCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_MEGA},
    {PickupVariant.PICKUP_COIN,CoinSubType.COIN_LUCKYPENNY},
    {PickupVariant.PICKUP_COIN,CoinSubType.COIN_GOLDEN},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_BONE}
}
Tier4Pickups = {
    {PickupVariant.PICKUP_COIN,CoinSubType.COIN_DIME},
    {PickupVariant.PICKUP_ETERNALCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_KEY,KeySubType.KEY_CHARGED},
    {PickupVariant.PICKUP_WOODENCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_NORMAL},
    {PickupVariant.PICKUP_MEGACHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_BOMBCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_LOCKEDCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_TAROTCARD,RuneList},
    {PickupVariant.PICKUP_TAROTCARD,SpecialCardList}
}
Tier3Pickups = {
    {PickupVariant.PICKUP_GRAB_BAG,SackSubType.SACK_BLACK},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_BLACK},
    {PickupVariant.PICKUP_CHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_HAUNTEDCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_SPIKEDCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_MIMICCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_DOUBLEPACK},
    {PickupVariant.PICKUP_GRAB_BAG,SackSubType.SACK_NORMAL},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_BLENDED},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_SOUL}
}
Tier2Pickups = {
    {PickupVariant.PICKUP_REDCHEST,ChestSubType.CHEST_CLOSED},
    {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_DOUBLEPACK},
    {PickupVariant.PICKUP_TAROTCARD,ReverseCardList},
    {PickupVariant.PICKUP_KEY,KeySubType.KEY_DOUBLEPACK},
    {PickupVariant.PICKUP_COIN,CoinSubType.COIN_NICKEL},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_ROTTEN},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_HALF_SOUL},
    {PickupVariant.PICKUP_TAROTCARD,NormalCardList},
    {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_NORMAL},
    {PickupVariant.PICKUP_KEY,KeySubType.KEY_NORMAL}
}
Tier1Pickups = {
    {PickupVariant.PICKUP_PILL,0},
    {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_MICRO},
    {CustomEnums.PickupVariant.PICKUP_HEART,CustomEnums.HeartSubType.HEART_TAINTED},
    {CustomEnums.PickupVariant.PICKUP_HEART,CustomEnums.HeartSubType.HEART_HALF_TAINTED},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_GOLDEN},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_FULL},
    {PickupVariant.PICKUP_COIN,CoinSubType.COIN_STICKYNICKEL},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_SCARED},
    {PickupVariant.PICKUP_HEART,HeartSubType.HEART_HALF},
    {PickupVariant.PICKUP_COIN,CoinSubType.COIN_PENNY}
}

StyleToasts = {}

function mod:PostNewRoom()
    timerRoom = 0
    points = 0
    hitNum = 0
    timerKill = 0
    timerBossKill = 0
end

function mod:PreRoomEntitySpawn()
    timerRoom = 0
    points = 0
    hitNum = 0
    timerKill = 0
    timerBossKill = 0
end

function mod:LatePostNewRoom()
    if Game():GetRoom():GetType() == RoomType.ROOM_BOSS then
        bossHealth = 0
        for _,entity in ipairs(Isaac.GetRoomEntities()) do
            if entity:ToNPC() then
                if entity:ToNPC():IsBoss() == true and not entity.Parent then
                    bossHealth = bossHealth + entity.MaxHitPoints
                end
            end
        end
    else
        enemyNum = 0
        for _,entity in ipairs(Isaac.GetRoomEntities()) do
            if entity.Type ~= EntityType.ENTITY_NULL
            and entity.Type ~= EntityType.ENTITY_PLAYER 
            and entity.Type ~= EntityType.ENTITY_FAMILIAR
            and entity.Type ~= EntityType.ENTITY_BOMB
            and entity.Type ~= EntityType.ENTITY_PICKUP 
            and entity.Type ~= EntityType.ENTITY_SLOT
            and entity.Type ~= EntityType.ENTITY_KNIFE
            and entity.Type ~= EntityType.ENTITY_FIREPLACE
            and entity.Type ~= EntityType.ENTITY_EFFECT
            and not entity.Parent
            then
                enemyNum = enemyNum + 1
            end
        end
    end
end

function mod:PrePlayerTriggerRoomClear(player)
    if Game():GetRoom():GetType() == RoomType.ROOM_BOSS then
        if timerRoom <= 150 then
            table.insert(StyleToasts,{[1] = "+Big UltraSpeedrun",[2] = Game():GetRoom():GetCenterPos()})
            points = points + 600 + 4 * (bossHealth / 3.5)
        elseif timerRoom <= 300 then
            table.insert(StyleToasts,{[1] = "+Big SuperSpeedrun",[2] = Game():GetRoom():GetCenterPos()})
            points = points + 450 + 3 * (bossHealth / 3.5)
        elseif timerRoom <= 450 then
            table.insert(StyleToasts,{[1] = "+Big Speedrun",[2] = Game():GetRoom():GetCenterPos()})
            points = 300 + 2 * (bossHealth / 3.5)
        end
    else
        if timerRoom <= 150 then
            table.insert(StyleToasts,{[1] = "+UltraSpeedrun",[2] = Game():GetRoom():GetCenterPos()})
            points = points + 200 + 20 * (enemyNum / 5)
        elseif timerRoom <= 300 then
            table.insert(StyleToasts,{[1] = "+SuperSpeedrun",[2] = Game():GetRoom():GetCenterPos()})
            points = points + 150 + 15 * (enemyNum / 5)
        elseif timerRoom <= 450 then
            table.insert(StyleToasts,{[1] = "+Speedrun",[2] = Game():GetRoom():GetCenterPos()})
            points = points + 100 + 10 * (enemyNum / 5)
        end
    end

    if player:HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER) then
        local ItemPool = Game():GetItemPool()
        local Room = Game():GetRoom()
        local GameData = Isaac.GetPersistentGameData()
        local rng = player:GetCollectibleRNG(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER)
        if points >= 1500 then
            repeat
                item = ItemPool:GetCollectible(ItemPoolType.POOL_TREASURE)
            until Isaac.GetItemConfig():GetCollectible(item).Quality >= 3
            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                pos = Vector(player.Position.X,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                pos = Vector(player.Position.X,player.Position.Y - 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                pos = Vector(player.Position.X - 40,player.Position.Y)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                pos = Vector(player.Position.X + 40,player.Position.Y)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
            else
                pos = player.Position -- If nothing works, then place it on top of the player
            end
            Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE,pos,Vector.Zero,nil,item,Room:GetSpawnSeed())
            pos = nil
        elseif points >= 1000 then
            lap = 0
            repeat
                lap = lap + 1
                local rand = rng:RandomInt(#Tier5Pickups) + 1
                for i,pickup in ipairs(Tier5Pickups) do
                    if i == rand then
                        local Variant = sFunc:getEntry(pickup,1)
                        local SubType = sFunc:getEntry(pickup,2)
                        if Variant == PickupVariant.PICKUP_LIL_BATTERY
                        and SubType == BatterySubType.BATTERY_GOLDEN 
                        and GameData:Unlocked(Achievement.GOLDEN_BATTERY) == false 
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_BOMB
                        and SubType == BombSubType.BOMB_GOLDEN
                        and GameData:Unlocked(Achievement.GOLD_BOMB) == false 
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_OLDCHEST
                        and GameData:Unlocked(Achievement.ISAACS_TOMB) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_COIN
                        and SubType == CoinSubType.COIN_LUCKYPENNY
                        and GameData:Unlocked(Achievement.LUCKY_PENNIES) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_COIN
                        and SubType == CoinSubType.COIN_GOLDEN
                        and GameData:Unlocked(Achievement.GOLDEN_PENNY) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_HEART
                        and SubType == HeartSubType.HEART_BONE
                        and GameData:Unlocked(Achievement.BONE_HEARTS) == false
                        then
                            break
                        else
                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                pos = Vector(player.Position.X,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                pos = Vector(player.Position.X,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                pos = Vector(player.Position.X - 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                pos = Vector(player.Position.X + 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                            else
                                pos = player.Position -- If nothing is free, then place it on top of the player
                            end
                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                            pos = nil
                            success = true
                            break
                        end
                    end
                end
            until success == true or lap == 20
            lap = 0
            if success ~= true then
                if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                    pos = Vector(player.Position.X,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                    pos = Vector(player.Position.X,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                    pos = Vector(player.Position.X - 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                    pos = Vector(player.Position.X + 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                else
                    pos = player.Position -- If nothing works, then place it on top of the player
                end
                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_KEY,pos,Vector.Zero,nil,KeySubType.KEY_GOLDEN,Room:GetSpawnSeed())
                pos = nil
            else
                success = nil
            end
        elseif points >= 850 then
            lap = 0
            repeat
                lap = lap + 1
                local rand = rng:RandomInt(#Tier4Pickups) + 1
                for i,pickup in ipairs(Tier4Pickups) do
                    if i == rand then
                        local Variant = sFunc:getEntry(pickup,1)
                        local SubType = sFunc:getEntry(pickup,2)
                        if Variant == PickupVariant.PICKUP_KEY
                        and SubType == KeySubType.KEY_CHARGED
                        and GameData:Unlocked(Achievement.CHARGED_KEY) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_WOODENCHEST
                        and GameData:Unlocked(Achievement.WOODEN_CHEST) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_MEGACHEST
                        and GameData:Unlocked(Achievement.MEGA_CHEST) == false
                        then
                            break
                        elseif SubType == RuneList then
                            lap2 = 0
                            repeat
                                lap2 = lap2 + 1
                                local rand = rng:RandomInt(#RuneList) + 1
                                for i,rune in ipairs(RuneList) do
                                    if i == rand then
                                        local SubType = rune
                                        if SubType == Card.CARD_SOUL_ISAAC
                                        and GameData:Unlocked(Achievement.SOUL_OF_ISAAC) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_MAGDALENE
                                        and GameData:Unlocked(Achievement.SOUL_OF_MAGDALENE) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_CAIN
                                        and GameData:Unlocked(Achievement.SOUL_OF_CAIN) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_JUDAS
                                        and GameData:Unlocked(Achievement.SOUL_OF_JUDAS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_BLUEBABY
                                        and GameData:Unlocked(Achievement.SOUL_OF_BLUE_BABY) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_EVE
                                        and GameData:Unlocked(Achievement.SOUL_OF_EVE) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_SAMSON
                                        and GameData:Unlocked(Achievement.SOUL_OF_SAMSON) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_AZAZEL
                                        and GameData:Unlocked(Achievement.SOUL_OF_AZAZEL) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_LAZARUS
                                        and GameData:Unlocked(Achievement.SOUL_OF_LAZARUS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_EDEN
                                        and GameData:Unlocked(Achievement.SOUL_OF_EDEN) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_LOST
                                        and GameData:Unlocked(Achievement.SOUL_OF_THE_LOST) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_LILITH
                                        and GameData:Unlocked(Achievement.SOUL_OF_LILITH) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_KEEPER
                                        and GameData:Unlocked(Achievement.SOUL_OF_THE_KEEPER) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_APOLLYON
                                        and GameData:Unlocked(Achievement.SOUL_OF_APOLLYON) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_FORGOTTEN
                                        and GameData:Unlocked(Achievement.SOUL_OF_THE_FORGOTTEN) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_BETHANY
                                        and GameData:Unlocked(Achievement.SOUL_OF_BETHANY) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SOUL_JACOB
                                        and GameData:Unlocked(Achievement.SOUL_OF_JACOB_AND_ESAU) == false
                                        then
                                            break
                                        else
                                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                                pos = Vector(player.Position.X,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                                pos = Vector(player.Position.X,player.Position.Y - 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                                            else
                                                pos = player.Position -- If nothing works, then place it on top of the player
                                            end
                                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                                            pos = nil
                                            success = true
                                            break
                                        end
                                    end
                                end
                            until success == true or lap2 == 20
                            lap2 = 0
                        elseif SubType == SpecialCardList then
                            lap2 = 0
                            repeat
                                lap2 = lap2 + 1
                                local rand = rng:RandomInt(#SpecialCardList) + 1
                                for i,card in ipairs(SpecialCardList) do
                                    if i == rand then
                                        SubType = card
                                        if SubType == Card.CARD_ACE_OF_CLUBS
                                        and GameData:Unlocked(Achievement.ACE_OF_CLUBS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_ACE_OF_DIAMONDS
                                        and GameData:Unlocked(Achievement.ACE_OF_DIAMONDS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_ACE_OF_SPADES
                                        and GameData:Unlocked(Achievement.ACE_OF_SPADES) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_ACE_OF_HEARTS
                                        and GameData:Unlocked(Achievement.ACE_OF_HEARTS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_CHAOS
                                        and GameData:Unlocked(Achievement.CHAOS_CARD) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_CREDIT
                                        and GameData:Unlocked(Achievement.CREDIT_CARD) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_RULES
                                        and GameData:Unlocked(Achievement.RULES_CARD) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_HUMANITY
                                        and GameData:Unlocked(Achievement.CARD_AGAINST_HUMANITY) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_SUICIDE_KING
                                        and GameData:Unlocked(Achievement.SUICIDE_KING) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_GET_OUT_OF_JAIL
                                        and GameData:Unlocked(Achievement.GET_OUT_OF_JAIL_FREE_CARD) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_HOLY
                                        and GameData:Unlocked(Achievement.HOLY_CARD) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_HUGE_GROWTH
                                        and GameData:Unlocked(Achievement.HUGE_GROWTH) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_ANCIENT_RECALL
                                        and GameData:Unlocked(Achievement.ANCIENT_RECALL) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_ERA_WALK
                                        and GameData:Unlocked(Achievement.ERA_WALK) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_CRACKED_KEY
                                        and GameData:Unlocked(Achievement.RED_KEY) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_QUEEN_OF_HEARTS
                                        and GameData:Unlocked(Achievement.QUEEN_OF_HEARTS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_WILD
                                        and GameData:Unlocked(Achievement.WILD_CARD) == false
                                        then
                                            break
                                        else
                                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                                pos = Vector(player.Position.X,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                                pos = Vector(player.Position.X,player.Position.Y - 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                                            else
                                                pos = player.Position -- If nothing works, then place it on top of the player
                                            end
                                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                                            pos = nil
                                            success = true
                                            break
                                        end
                                    end
                                end
                            until success == true or lap2 == 20
                            lap2 = 0
                        else
                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                pos = Vector(player.Position.X,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                pos = Vector(player.Position.X,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                pos = Vector(player.Position.X - 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                pos = Vector(player.Position.X + 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                            else
                                pos = player.Position -- If nothing is free, then place it on top of the player
                            end
                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                            pos = nil
                            success = true
                            break
                        end
                    end
                end
            until success == true or lap == 20
            if success ~= true then
                if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                    pos = Vector(player.Position.X,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                    pos = Vector(player.Position.X,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                    pos = Vector(player.Position.X - 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                    pos = Vector(player.Position.X + 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                else
                    pos = player.Position -- If nothing works, then place it on top of the player
                end
                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_LIL_BATTERY,pos,Vector.Zero,nil,BatterySubType.BATTERY_NORMAL,Room:GetSpawnSeed())
                pos = nil
            else
                success = nil
            end
        elseif points >= 700 then
            repeat
                item = ItemPool:GetCollectible(ItemPoolType.POOL_TREASURE)
            until Isaac.GetItemConfig():GetCollectible(item).Quality == 2
            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                pos = Vector(player.Position.X,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                pos = Vector(player.Position.X,player.Position.Y - 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                pos = Vector(player.Position.X - 40,player.Position.Y)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                pos = Vector(player.Position.X + 40,player.Position.Y)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
            else
                pos = player.Position -- If nothing works, then place it on top of the player
            end
            Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE,Room:GetCenterPos(),Vector.Zero,nil,item,Room:GetSpawnSeed())
            pos = nil
        elseif points >= 500 then
            lap = 0
            repeat
                lap = lap + 1
                local rand = rng:RandomInt(#Tier3Pickups) + 1
                for i,pickup in ipairs(Tier3Pickups) do
                    if i == rand then
                        local Variant = sFunc:getEntry(pickup,1)
                        local SubType = sFunc:getEntry(pickup,2)
                        if Variant == PickupVariant.PICKUP_GRAB_BAG
                        and SubType == SackSubType.SACK_BLACK
                        and GameData:Unlocked(Achievement.BLACK_SACK) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_HAUNTEDCHEST
                        and GameData:Unlocked(Achievement.HAUNTED_CHEST) == false
                        then
                            break
                        else
                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                pos = Vector(player.Position.X,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                pos = Vector(player.Position.X,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                pos = Vector(player.Position.X - 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                pos = Vector(player.Position.X + 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                            else
                                pos = player.Position -- If nothing is free, then place it on top of the player
                            end
                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                            pos = nil
                            success = true
                            break
                        end
                    end
                end
            until success == true or lap == 20
            lap = 0
            if success ~= true then
                if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                    pos = Vector(player.Position.X,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                    pos = Vector(player.Position.X,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                    pos = Vector(player.Position.X - 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                    pos = Vector(player.Position.X + 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                else
                    pos = player.Position -- If nothing works, then place it on top of the player
                end
                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_MIMICCHEST,pos,Vector.Zero,nil,ChestSubType.CHEST_CLOSED,Room:GetSpawnSeed())
                pos = nil
            else
                success = nil
            end
        elseif points >= 400 then
            repeat
                item = ItemPool:GetCollectible(ItemPoolType.POOL_TREASURE)
            until Isaac.GetItemConfig():GetCollectible(item).Quality <= 1
            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                pos = Vector(player.Position.X,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                pos = Vector(player.Position.X,player.Position.Y - 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                pos = Vector(player.Position.X - 40,player.Position.Y)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                pos = Vector(player.Position.X + 40,player.Position.Y)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
            else
                pos = player.Position -- If nothing works, then place it on top of the player
            end
            Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE,pos,Vector.Zero,nil,item,Room:GetSpawnSeed())
            pos = nil
        elseif points >= 300 then
            lap = 0
            repeat
                local rand = rng:RandomInt(#Tier2Pickups) + 1
                for i,pickup in ipairs(Tier2Pickups) do
                    if i == rand then
                        local Variant = sFunc:getEntry(pickup,1)
                        local SubType = sFunc:getEntry(pickup,2)
                        if SubType == ReverseCardList then
                            lap2 = 0
                            repeat
                                local rand = rng:RandomInt(#ReverseCardList) + 1
                                for i,card in ipairs(ReverseCardList) do
                                    if i == rand then
                                        SubType = card
                                        if SubType == Card.CARD_REVERSE_FOOL
                                        and GameData:Unlocked(Achievement.REVERSED_FOOL) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_MAGICIAN
                                        and GameData:Unlocked(Achievement.REVERSED_MAGICIAN) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_HIGH_PRIESTESS
                                        and GameData:Unlocked(Achievement.REVERSED_HIGH_PRIESTESS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_EMPRESS
                                        and GameData:Unlocked(Achievement.REVERSED_EMPRESS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_EMPEROR
                                        and GameData:Unlocked(Achievement.REVERSED_EMPEROR) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_HIEROPHANT
                                        and GameData:Unlocked(Achievement.REVERSED_HIEROPHANT) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_LOVERS
                                        and GameData:Unlocked(Achievement.REVERSED_LOVERS) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_CHARIOT
                                        and GameData:Unlocked(Achievement.REVERSED_CHARIOT) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_JUSTICE
                                        and GameData:Unlocked(Achievement.REVERSED_JUSTICE) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_HERMIT
                                        and GameData:Unlocked(Achievement.REVERSED_HERMIT) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_WHEEL_OF_FORTUNE
                                        and GameData:Unlocked(Achievement.REVERSED_WHEEL_OF_FORTUNE) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_STRENGTH
                                        and GameData:Unlocked(Achievement.REVERSED_STRENGTH) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_HANGED_MAN
                                        and GameData:Unlocked(Achievement.REVERSED_HANGED_MAN) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_DEATH
                                        and GameData:Unlocked(Achievement.REVERSED_DEATH) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_TEMPERANCE
                                        and GameData:Unlocked(Achievement.REVERSED_TEMPERANCE) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_DEVIL
                                        and GameData:Unlocked(Achievement.REVERSED_DEVIL) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_TOWER
                                        and GameData:Unlocked(Achievement.REVERSED_TOWER) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_STARS
                                        and GameData:Unlocked(Achievement.REVERSED_STARS) == false
                                        then
                                            break
                                        elseif (SubType == Card.CARD_REVERSE_MOON or SubType == Card.CARD_REVERSE_SUN)
                                        and GameData:Unlocked(Achievement.REVERSED_SUN_AND_MOON) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_JUDGEMENT
                                        and GameData:Unlocked(Achievement.REVERSED_JUDGEMENT) == false
                                        then
                                            break
                                        elseif SubType == Card.CARD_REVERSE_WORLD
                                        and GameData:Unlocked(Achievement.REVERSED_WORLD) == false
                                        then
                                            break
                                        else
                                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                                pos = Vector(player.Position.X,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                                pos = Vector(player.Position.X,player.Position.Y - 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                                            else
                                                pos = player.Position -- If nothing works, then place it on top of the player
                                            end
                                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                                            pos = nil
                                            success = true
                                            break
                                        end
                                    end
                                end
                            until success == true or lap2 == 20
                            lap2 = 0
                        elseif Variant == PickupVariant.PICKUP_HEART
                        and SubType == HeartSubType.HEART_ROTTEN 
                        and GameData:Unlocked(Achievement.ROTTEN_HEARTS) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_HEART
                        and SubType == HeartSubType.HEART_HALF_SOUL
                        and GameData:Unlocked(Achievement.EVERYTHING_IS_TERRIBLE) == false
                        then
                            break
                        elseif SubType == NormalCardList then
                            local rand = rng:RandomInt(#NormalCardList) + 1
                            for i,card in ipairs(NormalCardList) do
                                if i == rand then
                                    SubType = card
                                    if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                        pos = Vector(player.Position.X,player.Position.Y + 40)
                                    elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                        pos = Vector(player.Position.X,player.Position.Y - 40)
                                    elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                        pos = Vector(player.Position.X - 40,player.Position.Y)
                                    elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                        pos = Vector(player.Position.X + 40,player.Position.Y)
                                    elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                        pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                                    elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                        pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                                    elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                        pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                                    elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                        pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                                    else
                                        pos = player.Position -- If nothing works, then place it on top of the player
                                    end
                                    Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                                    pos = nil
                                    success = true
                                    break
                                end
                            end
                        else
                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                pos = Vector(player.Position.X,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                pos = Vector(player.Position.X,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                pos = Vector(player.Position.X - 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                pos = Vector(player.Position.X + 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                            else
                                pos = player.Position -- If nothing is free, then place it on top of the player
                            end
                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                            pos = nil
                            success = true
                            break
                        end
                    end
                end
            until success == true or lap == 20
            lap = 0
            if success ~= true then
                if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                    pos = Vector(player.Position.X,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                    pos = Vector(player.Position.X,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                    pos = Vector(player.Position.X - 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                    pos = Vector(player.Position.X + 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                else
                    pos = player.Position -- If nothing works, then place it on top of the player
                end
                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COIN,pos,Vector.Zero,nil,CoinSubType.COIN_NICKEL,Room:GetSpawnSeed())
                pos = nil
            else
                success = nil
            end
        elseif points >= 200 then
            lap = 0
            repeat
                lap = lap + 1
                local rand = rng:RandomInt(#Tier1Pickups) + 1
                for i,pickup in ipairs(Tier1Pickups) do
                    if i == rand then
                        local Variant = sFunc:getEntry(pickup,1)
                        local SubType = sFunc:getEntry(pickup,2)
                        if Variant == PickupVariant.PICKUP_LIL_BATTERY
                        and SubType == BatterySubType.BATTERY_MICRO
                        and GameData:Unlocked(Achievement.EVERYTHING_IS_TERRIBLE) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_HEART
                        and SubType == HeartSubType.HEART_GOLDEN
                        and GameData:Unlocked(Achievement.GOLDEN_HEARTS) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_COIN
                        and SubType == CoinSubType.COIN_STICKYNICKEL
                        and GameData:Unlocked(Achievement.STICKY_NICKELS) == false
                        then
                            break
                        elseif Variant == PickupVariant.PICKUP_HEART
                        and SubType == HeartSubType.HEART_SCARED
                        and GameData:Unlocked(Achievement.SCARED_HEART) == false
                        then
                            break
                        else
                            local player = Isaac.GetPlayer()
                            if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                                pos = Vector(player.Position.X,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                                pos = Vector(player.Position.X,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                                pos = Vector(player.Position.X - 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                                pos = Vector(player.Position.X + 40,player.Position.Y)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                                pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                            elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                                pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                            else
                                pos = player.Position -- If nothing is free, then place it on top of the player
                            end
                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                            pos = nil
                            success = true
                            break
                        end
                    end
                end
            until success == true or lap == 20
            if success ~= true then
                if not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y + 40)) then -- South of player
                    pos = Vector(player.Position.X,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X,player.Position.Y - 40)) then -- North of player
                    pos = Vector(player.Position.X,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y)) then -- West of player
                    pos = Vector(player.Position.X - 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y)) then -- East of player
                    pos = Vector(player.Position.X + 40,player.Position.Y)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y + 40)) then -- Southwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y + 40)) then -- Southeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y + 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X - 40,player.Position.Y - 40)) then -- Northwest of player
                    pos = Vector(player.Position.X - 40,player.Position.Y - 40)
                elseif not Room:GetGridEntityFromPos(Vector(player.Position.X + 40,player.Position.Y - 40)) then -- Northeast of player
                    pos = Vector(player.Position.X + 40,player.Position.Y - 40)
                else
                    pos = player.Position -- If nothing works, then place it on top of the player
                end
                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_HEART,pos,Vector.Zero,nil,HeartSubType.HEART_FULL,Room:GetSpawnSeed())
                pos = nil
            else
                success = nil
            end
        end
    end
end

function mod:PostEntityKill(entity)
    if entity:ToNPC() and not entity.Parent then
        if entity:ToNPC():IsBoss() == true then
            BossKillStreak = BossKillStreak + 1
            if timerBossKill > 0 
            and BossKillStreak - 1 > 0
            then
                table.insert(StyleToasts,{[1] = tostring("+Big Multikill x" .. BossKillStreak - 1),[2] = entity.Position})
                points = points + 45 * (BossKillStreak - 1)
            end
            timerBossKill = 60
            points = points + 30
        else
            KillStreak = KillStreak + 1
            if timerKill > 0 
            and KillStreak - 1 > 0 
            then
                table.insert(StyleToasts,{[1] = tostring("+Multikill x" .. KillStreak - 1),[2] = entity.Position})
                points = points + 15 * (KillStreak - 1)
            end
            timerKill = 60
            points = points + 10
        end
    end
end

function mod:UseCard(card,player,_)
    if card == Card.CARD_MAGICIAN
    or card == Card.CARD_HIGH_PRIESTESS
    or card == Card.CARD_EMPRESS
    or card == Card.CARD_CHARIOT
    or card == Card.CARD_STRENGTH
    or card == Card.CARD_DEATH
    or card == Card.CARD_DEVIL
    or card == Card.CARD_TOWER
    or card == Card.CARD_SUN
    or card == Card.RUNE_BERKANO
    or card == Card.RUNE_BLACK
    or card == Card.CARD_CHAOS
    or card == Card.CARD_EMERGENCY_CONTACT
    or card == Card.CARD_HUGE_GROWTH
    or card == Card.CARD_ERA_WALK
    or card == Card.CARD_REVERSE_MAGICIAN
    or card == Card.CARD_REVERSE_EMPRESS
    or card == Card.CARD_REVERSE_CHARIOT
    or card == Card.CARD_REVERSE_STRENGTH
    or card == Card.CARD_SOUL_MAGDALENE
    or card == Card.CARD_SOUL_JUDAS
    or card == Card.CARD_SOUL_BLUEBABY
    or card == Card.CARD_SOUL_EVE
    or card == Card.CARD_SOUL_SAMSON
    or card == Card.CARD_SOUL_AZAZEL
    then
        table.insert(StyleToasts,{[1] = "+Utility",[2] = player.Position})
        points = points + 25
    end
end

function mod:UsePill(pill,player,_)
    if pill == PillEffect.PILLEFFECT_BAD_GAS
    or pill == PillEffect.PILLEFFECT_EXPLOSIVE_DIARRHEA
    or pill == PillEffect.PILLEFFECT_PHEROMONES
    or pill == PillEffect.PILLEFFECT_LEMON_PARTY
    or pill == PillEffect.PILLEFFECT_SOMETHINGS_WRONG
    or pill == PillEffect.PILLEFFECT_HORF
    then
        table.insert(StyleToasts,{[1] = "+Utility",[2] = player.Position})
        points = points + 25
    end
end

function mod:UseItem(item,_,player,_,_,_)
    if item == CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL
    or item == CollectibleType.COLLECTIBLE_NECRONOMICON
    or item == CollectibleType.COLLECTIBLE_TAMMYS_HEAD
    or item == CollectibleType.COLLECTIBLE_MOMS_BRA
    or item == CollectibleType.COLLECTIBLE_MOMS_PAD
    or item == CollectibleType.COLLECTIBLE_SHOOP_DA_WHOOP
    or item == CollectibleType.COLLECTIBLE_LEMON_MISHAP
    or item == CollectibleType.COLLECTIBLE_BOOK_OF_SHADOWS
    or item == CollectibleType.COLLECTIBLE_ANARCHIST_COOKBOOK
    or item == CollectibleType.COLLECTIBLE_HOURGLASS
    or item == CollectibleType.COLLECTIBLE_MY_LITTLE_UNICORN
    or item == CollectibleType.COLLECTIBLE_THE_NAIL
    or item == CollectibleType.COLLECTIBLE_MONSTROS_TOOTH
    or item == CollectibleType.COLLECTIBLE_GAMEKID
    or item == CollectibleType.COLLECTIBLE_PINKING_SHEARS
    or item == CollectibleType.COLLECTIBLE_BEAN
    or item == CollectibleType.COLLECTIBLE_RAZOR_BLADE
    or item == CollectibleType.COLLECTIBLE_PONY
    or item == CollectibleType.COLLECTIBLE_BEST_FRIEND
    or item == CollectibleType.COLLECTIBLE_CRACK_THE_SKY
    or item == CollectibleType.COLLECTIBLE_CANDLE
    or item == CollectibleType.COLLECTIBLE_SPIDER_BUTT
    or item == CollectibleType.COLLECTIBLE_WHITE_PONY
    or item == CollectibleType.COLLECTIBLE_BLOOD_RIGHTS
    or item == CollectibleType.COLLECTIBLE_TELEPATHY_BOOK
    or item == CollectibleType.COLLECTIBLE_D10
    or item == CollectibleType.COLLECTIBLE_RED_CANDLE
    or item == CollectibleType.COLLECTIBLE_FLUSH
    or item == CollectibleType.COLLECTIBLE_HEAD_OF_KRAMPUS
    or item == CollectibleType.COLLECTIBLE_BUTTER_BEAN
    or item == CollectibleType.COLLECTIBLE_MAGIC_FINGERS
    or item == CollectibleType.COLLECTIBLE_UNICORN_STUMP
    or item == CollectibleType.COLLECTIBLE_ISAACS_TEARS
    or item == CollectibleType.COLLECTIBLE_SCISSORS
    or item == CollectibleType.COLLECTIBLE_BREATH_OF_LIFE
    or item == CollectibleType.COLLECTIBLE_BOOMERANG
    or item == CollectibleType.COLLECTIBLE_MEGA_BEAN
    or item == CollectibleType.COLLECTIBLE_GLASS_CANNON
    or item == CollectibleType.COLLECTIBLE_BOX_OF_FRIENDS
    or item == CollectibleType.COLLECTIBLE_FRIEND_BALL
    or item == CollectibleType.COLLECTIBLE_TEAR_DETONATOR
    or item == CollectibleType.COLLECTIBLE_KIDNEY_BEAN
    or item == CollectibleType.COLLECTIBLE_MEGA_BLAST
    or item == CollectibleType.COLLECTIBLE_PLAN_C
    or item == CollectibleType.COLLECTIBLE_PAUSE
    or item == CollectibleType.COLLECTIBLE_MAMA_MEGA
    or item == CollectibleType.COLLECTIBLE_WAIT_WHAT
    or item == CollectibleType.COLLECTIBLE_BROWN_NUGGET
    or item == CollectibleType.COLLECTIBLE_SHARP_STRAW
    or item == CollectibleType.COLLECTIBLE_DELIRIOUS
    or item == CollectibleType.COLLECTIBLE_BLACK_HOLE
    or item == CollectibleType.COLLECTIBLE_SPRINKLER
    or item == CollectibleType.COLLECTIBLE_TELEKINESIS
    or item == CollectibleType.COLLECTIBLE_GOLDEN_RAZOR
    or item == CollectibleType.COLLECTIBLE_SULFUR
    or item == CollectibleType.COLLECTIBLE_FREE_LEMONADE
    or item == CollectibleType.COLLECTIBLE_WAVY_CAP
    or item == CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES
    or item == CollectibleType.COLLECTIBLE_SCOOPER
    or item == CollectibleType.COLLECTIBLE_LARYNX
    or item == CollectibleType.COLLECTIBLE_SHARP_KEY
    or item == CollectibleType.COLLECTIBLE_MEGA_MUSH
    or item == CollectibleType.COLLECTIBLE_MEAT_CLEAVER
    or item == CollectibleType.COLLECTIBLE_ERASER
    or item == CollectibleType.COLLECTIBLE_URN_OF_SOULS
    or item == CollectibleType.COLLECTIBLE_PLUM_FLUTE
    or item == CollectibleType.COLLECTIBLE_VADE_RETRO
    or item == CollectibleType.COLLECTIBLE_SPIN_TO_WIN
    or item == CollectibleType.COLLECTIBLE_JAR_OF_WISPS
    or item == CollectibleType.COLLECTIBLE_FRIEND_FINDER
    or item == CollectibleType.COLLECTIBLE_BERSERK
    or item == CollectibleType.COLLECTIBLE_DARK_ARTS
    or item == CollectibleType.COLLECTIBLE_SUPLEX
    or item == CollectibleType.COLLECTIBLE_SUMPTORIUM
    or item == CollectibleType.COLLECTIBLE_ANIMA_SOLA
    or item == CollectibleType.COLLECTIBLE_GELLO
    or item == CollectibleType.COLLECTIBLE_DECAP_ATTACK
    then
        table.insert(StyleToasts,{[1] = "+Utility",[2] = player.Position})
        points = points + 20
    end
end

function mod:EntityTakeDMG(entity,Amount,_,Source,_)
    if entity:ToPlayer() and sFunc:isSacrificeDamage(entity,Source) == false then
        table.insert(StyleToasts,{[1] = "-Damage",[2] = entity.Position})
        points = points - 20 - 5 * hitNum
        hitNum = hitNum + 1
    end

    if Source.Entity 
    and entity.Type ~= EntityType.ENTITY_MOVABLE_TNT
    and entity.Type ~= EntityType.ENTITY_FIREPLACE
    and entity:ToNPC()
    and entity.HitPoints - Amount <= 0
    and not entity.Parent
    then
        if Source.Entity:ToBomb() then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Explosion",[2] = entity.Position})
                points = points + 120
            else
                table.insert(StyleToasts,{[1] = "+Explosion",[2] = entity.Position})
                points = points + 40
            end
        elseif Source.Entity:ToFamiliar() then
            local familiar = Source.Entity:ToFamiliar()
            if familiar.OrbitLayer ~= -1
            and entity:ToNPC():IsBoss() == true
            then
                table.insert(StyleToasts,{[1] = "+Big Flash Strats",[2] = entity.Position})
                points = points + 90
            elseif familiar.OrbitLayer == -1
            and entity:ToNPC():IsBoss() == true
            then
                table.insert(StyleToasts,{[1] = "+Big Helping Hand",[2] = entity.Position})
                points = points + 60
            elseif familiar.OrbitLayer ~= -1 then
                table.insert(StyleToasts,{[1] = "+Flash Strats",[2] = entity.Position})
                points = points + 30
            elseif familiar.OrbitLayer == Vector.Zero then
                table.insert(StyleToasts,{[1] = "+Helping Hand",[2] = entity.Position})
                points = points + 20
            end
        elseif (Source.Type == EntityType.ENTITY_MOVABLE_TNT
        or Source.Type == EntityType.ENTITY_FIREPLACE) 
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Envirokill",[2] = entity.Position})
                points = points + 75
            else
                table.insert(StyleToasts,{[1] = "+Envirokill",[2] = entity.Position})
                points = points + 25
            end
        elseif sFunc:isPlayerProjectile(Source.Entity) == false
        and sFunc:isFamiliarProjectile(Source.Entity) == false
        and Source.IsFriendly == true 
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Betrayal",[2] = entity.Position})
                points = points + 45
            else
                table.insert(StyleToasts,{[1] = "+Betrayal",[2] = entity.Position})
                points = points + 15
            end
        elseif sFunc:isPlayerProjectile(Source.Entity) == false
        and sFunc:isFamiliarProjectile(Source.Entity) == false
        and Source.Type ~= EntityType.ENTITY_EFFECT and Source.Variant ~= EffectVariant.PLAYER_CREEP_GREEN
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Friendly Fire",[2] = entity.Position})
                points = points + 150
            else
                table.insert(StyleToasts,{[1] = "+Friendly Fire",[2] = entity.Position})
                points = points + 50
            end
        elseif sFunc:isFamiliarProjectile(Source.Entity) == true
        and entity:ToNPC()
        and entity.HitPoints - Amount <= 0 
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Helping Hand",[2] = entity.Position})
                points = points + 60
            else
                table.insert(StyleToasts,{[1] = "+Helping Hand",[2] = entity.Position})
                points = points + 20
            end
        end
    elseif entity:ToNPC()
    and sFunc:isFamineChargeDamage(entity,Source) == true
    and entity.Type ~= EntityType.ENTITY_MOVABLE_TNT
    and entity.Type ~= EntityType.ENTITY_FIREPLACE
    and entity.HitPoints - Amount <= 0
    and not entity.Parent
    then
        if entity:ToNPC():IsBoss() == true then
            table.insert(StyleToasts,{[1] = "+Big Friendly Fire",[2] = entity.Position})
            points = points + 150
        else
            table.insert(StyleToasts,{[1] = "+Friendly Fire",[2] = entity.Position})
            points = points + 50
        end
    elseif entity:ToNPC()
    and entity.Type ~= EntityType.ENTITY_NULL
    and entity.Type ~= EntityType.ENTITY_MOVABLE_TNT
    and entity.Type ~= EntityType.ENTITY_FIREPLACE
    and entity.HitPoints - Amount <= 0
    and not entity.Parent
    then
        if entity:ToNPC():IsBoss() == true then
            table.insert(StyleToasts,{[1] = "+Big Envirokill",[2] = entity.Position})
            points = points + 75
        else
            table.insert(StyleToasts,{[1] = "+Envirokill",[2] = entity.Position})
            points = points + 25
        end
    end
end

function mod:PreTriggerPlayerDeath(player)
    table.insert(StyleToasts,{[1] = "-Death",[2] = player.Position})
    points = points - 200
end

function mod:PostRender()
    timerRoom = timerRoom + 1
    if timerKill > 0 then
        timerKill = timerKill - 1
    else
        KillStreak = 0
    end
    if timerBossKill > 0 then
        timerBossKill = timerBossKill - 1
    else
        BossKillStreak = 0
    end

    if Isaac.GetPlayer():HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER) then
        if HeartManager:GetHeartCount() <= 12 then
            yPos = 21
        else
            yPos = 30
        end

        if points >= 1500 then
            Isaac.RenderText("ULTRAsaac",50,yPos,1,(110 / 255),0,1)
        elseif points >= 1000 then
            Isaac.RenderText("SSShitstorm",50,yPos,(206 / 255),0,0,1)
        elseif points >= 850 then
            Isaac.RenderText("SSadistic",50,yPos,(220 / 255),0,0,1)
        elseif points >= 700 then
            Isaac.RenderText("Supreme",50,yPos,1,0,0,1)
        elseif points >= 500 then
            Isaac.RenderText("Anarchic",50,yPos,1,(104 / 255),0,1)
        elseif points >= 400 then
            Isaac.RenderText("Brutal",50,yPos,(254 / 255),(217 / 255),0,1)
        elseif points >= 300 then
            Isaac.RenderText("Chaotic",50,yPos,(73 / 255),1,0,1)
        elseif points >= 200 then
            Isaac.RenderText("Destructive",50,yPos,0,(146 / 255),1,1)
        else
            Isaac.RenderText("Lame...",50,yPos,(131 / 255),(131 / 255),(131 / 255),1)
        end

        for i,v in ipairs(StyleToasts) do
            local toast = v[1]
            local pos = v[2]
            if not v[3] then 
                transparency = 70
            else
                transparency = v[3]
            end
            local screenPos = Isaac.WorldToRenderPosition(pos)
            Isaac.RenderText(toast,screenPos.X,screenPos.Y,1,1,1,(transparency / 100))
            local pos = Vector(pos.X,pos.Y - 1)
            transparency = transparency - 1
            if transparency > 0 then
                v[1] = toast
                v[2] = pos
                v[3] = transparency
            else
                table.remove(StyleToasts,i)
            end
        end
    end
end

mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.PostNewRoom)
mod:AddCallback(ModCallbacks.MC_PRE_ROOM_ENTITY_SPAWN, mod.PreRoomEntitySpawn)
mod:AddPriorityCallback(ModCallbacks.MC_POST_NEW_ROOM, CallbackPriority.LATE, mod.LatePostNewRoom)
mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_TRIGGER_ROOM_CLEAR, mod.PrePlayerTriggerRoomClear)
mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, mod.PostEntityKill)
mod:AddCallback(ModCallbacks.MC_USE_CARD, mod.UseCard)
mod:AddCallback(ModCallbacks.MC_USE_PILL, mod.UsePill)
mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseItem)
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.EntityTakeDMG)
mod:AddCallback(ModCallbacks.MC_PRE_TRIGGER_PLAYER_DEATH, mod.PreTriggerPlayerDeath)
mod:AddCallback(ModCallbacks.MC_POST_RENDER, mod.PostRender)
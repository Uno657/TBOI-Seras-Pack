if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER, "# Adds a style rank to the player's HUD# The style rank increases via doing stylish things, such as killing enemies quickly or with the environment# Achieving a style rank above {{ColorGray}}Lame...{{CR}} will grant a reward upon room clear# The higher your rank, the better the reward")
end

RuneList = {
    {Achievement.HAGALAZ, Card.RUNE_HAGALAZ},
    {Achievement.JERA, Card.RUNE_JERA},
    {Achievement.EHWAZ, Card.RUNE_EHWAZ},
    {Achievement.DAGAZ, Card.RUNE_DAGAZ},
    {Achievement.ANSUZ, Card.RUNE_ANSUZ},
    {Achievement.PETHRO, Card.RUNE_PERTHRO},
    {Achievement.BERKANO, Card.RUNE_BERKANO},
    {Achievement.ALGIZ, Card.RUNE_ALGIZ},
    {Achievement.BLANK_RUNE, Card.RUNE_BLANK},
    {Achievement.BLACK_RUNE, Card.RUNE_BLACK},
    {Achievement.SOUL_OF_ISAAC, Card.CARD_SOUL_ISAAC},
    {Achievement.SOUL_OF_MAGDALENE, Card.CARD_SOUL_MAGDALENE},
    {Achievement.SOUL_OF_CAIN, Card.CARD_SOUL_CAIN},
    {Achievement.SOUL_OF_JUDAS, Card.CARD_SOUL_JUDAS},
    {Achievement.SOUL_OF_QQQ, Card.CARD_SOUL_BLUEBABY},
    {Achievement.SOUL_OF_EVE, Card.CARD_SOUL_EVE},
    {Achievement.SOUL_OF_SAMSON, Card.CARD_SOUL_SAMSON},
    {Achievement.SOUL_OF_AZAZEL, Card.CARD_SOUL_AZAZEL},
    {Achievement.SOUL_OF_LAZARUS, Card.CARD_SOUL_LAZARUS},
    {Achievement.SOUL_OF_EDEN, Card.CARD_SOUL_EDEN},
    {Achievement.SOUL_OF_LOST, Card.CARD_SOUL_LOST},
    {Achievement.SOUL_OF_LILITH, Card.CARD_SOUL_LILITH},
    {Achievement.SOUL_OF_KEEPER, Card.CARD_SOUL_KEEPER},
    {Achievement.SOUL_OF_APOLLYON, Card.CARD_SOUL_APOLLYON},
    {Achievement.SOUL_OF_FORGOTTEN, Card.CARD_SOUL_FORGOTTEN},
    {Achievement.SOUL_OF_BETHANY, Card.CARD_SOUL_BETHANY},
    {Achievement.SOUL_OF_JACOB, Card.CARD_SOUL_JACOB}
}
SpecialCardList = {
    {nil, Card.CARD_CLUBS_2},
    {nil, Card.CARD_DIAMONDS_2},
    {nil, Card.CARD_SPADES_2},
    {nil, Card.CARD_HEARTS_2},
    {Achievement.ACE_OF_CLUBS, Card.CARD_ACE_OF_CLUBS},
    {Achievement.ACE_OF_DIAMONDS, Card.CARD_ACE_OF_DIAMONDS},
    {Achievement.ACE_OF_SPADES, Card.CARD_ACE_OF_SPADES},
    {Achievement.ACE_OF_HEARTS, Card.CARD_ACE_OF_HEARTS},
    {nil, Card.CARD_JOKER},
    {Achievement.CHAOS_CARD, Card.CARD_CHAOS},
    {Achievement.CREDIT_CARD, Card.CARD_CREDIT},
    {Achievement.RULES_CARD, Card.CARD_RULES},
    {Achievement.CARD_AGAINST_HUMANITY, Card.CARD_HUMANITY},
    {Achievement.SUICIDE_KING, Card.CARD_SUICIDE_KING},
    {Achievement.GET_OUT_OF_JAIL_FREE, Card.CARD_GET_OUT_OF_JAIL},
    {nil, Card.CARD_QUESTIONMARK},
    {nil, Card.CARD_DICE_SHARD},
    {nil, Card.CARD_EMERGENCY_CONTACT},
    {Achievement.HOLY_CARD, Card.CARD_HOLY},
    {Achievement.HUGE_GROWTH, Card.CARD_HUGE_GROWTH},
    {Achievement.ANCIENT_RECALL, Card.CARD_ANCIENT_RECALL},
    {Achievement.ERA_WALK, Card.CARD_ERA_WALK},
    {Achievement.RED_KEY, Card.CARD_CRACKED_KEY},
    {Achievement.QUEEN_OF_HEARTS, Card.CARD_QUEEN_OF_HEARTS},
    {Achievement.WILD_CARD, Card.CARD_WILD}
}
ReverseCardList = {
    {Achievement.REVERSED_FOOL, Card.CARD_REVERSE_FOOL},
    {Achievement.REVERSED_MAGICIAN, Card.CARD_REVERSE_MAGICIAN},
    {Achievement.REVERSED_HIGH_PRIESTESS, Card.CARD_REVERSE_HIGH_PRIESTESS},
    {Achievement.REVERSED_EMPRESS, Card.CARD_REVERSE_EMPRESS},
    {Achievement.REVERSED_EMPEROR, Card.CARD_REVERSE_EMPEROR},
    {Achievement.REVERSED_HIEROPHANT, Card.CARD_REVERSE_HIEROPHANT},
    {Achievement.REVERSED_LOVERS, Card.CARD_REVERSE_LOVERS},
    {Achievement.REVERSED_CHARIOT, Card.CARD_REVERSE_CHARIOT},
    {Achievement.REVERSED_JUSTICE, Card.CARD_REVERSE_JUSTICE},
    {Achievement.REVERSED_HERMIT, Card.CARD_REVERSE_HERMIT},
    {Achievement.REVERSED_WHEEL_OF_FORTUNE, Card.CARD_REVERSE_WHEEL_OF_FORTUNE},
    {Achievement.REVERSED_STRENGTH, Card.CARD_REVERSE_STRENGTH},
    {Achievement.REVERSED_HANGED_MAN, Card.CARD_REVERSE_HANGED_MAN},
    {Achievement.REVERSED_DEATH, Card.CARD_REVERSE_DEATH},
    {Achievement.REVERSED_TEMPERANCE, Card.CARD_REVERSE_TEMPERANCE},
    {Achievement.REVERSED_DEVIL, Card.CARD_REVERSE_DEVIL},
    {Achievement.REVERSED_TOWER, Card.CARD_REVERSE_TOWER},
    {Achievement.REVERSED_STARS, Card.CARD_REVERSE_STARS},
    {Achievement.REVERSED_SUN_AND_MOON, Card.CARD_REVERSE_MOON},
    {Achievement.REVERSED_SUN_AND_MOON, Card.CARD_REVERSE_SUN},
    {Achievement.REVERSED_JUDGEMENT, Card.CARD_REVERSE_JUDGEMENT},
    {Achievement.REVERSED_WORLD, Card.CARD_REVERSE_WORLD}
}
NormalCardList = {
    {nil, Card.CARD_FOOL},
    {nil, Card.CARD_MAGICIAN},
    {nil, Card.CARD_HIGH_PRIESTESS},
    {nil, Card.CARD_EMPRESS},
    {nil, Card.CARD_EMPEROR},
    {nil, Card.CARD_HIEROPHANT},
    {nil, Card.CARD_LOVERS},
    {nil, Card.CARD_CHARIOT},
    {nil, Card.CARD_JUSTICE},
    {nil, Card.CARD_HERMIT},
    {nil, Card.CARD_WHEEL_OF_FORTUNE},
    {nil, Card.CARD_STRENGTH},
    {nil, Card.CARD_HANGED_MAN},
    {nil, Card.CARD_DEATH},
    {nil, Card.CARD_TEMPERANCE},
    {nil, Card.CARD_DEVIL},
    {nil, Card.CARD_TOWER},
    {nil, Card.CARD_STARS},
    {nil, Card.CARD_MOON},
    {nil, Card.CARD_SUN},
    {nil, Card.CARD_JUDGEMENT},
    {nil, Card.CARD_WORLD}
}

Tier5Pickups = {
    {Achievement.ASHPIT, {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_GIGA}},
    {Achievement.GOLDEN_BATTERY, {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_GOLDEN}},
    {nil, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_ETERNAL}},
    {Achievement.GOLD_BOMB, {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_GOLDEN}},
    {nil, {PickupVariant.PICKUP_KEY,KeySubType.KEY_GOLDEN}},
    {Achievement.ISAACS_TOMB, {PickupVariant.PICKUP_OLDCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_MEGA}},
    {Achievement.LUCKY_PENNIES, {PickupVariant.PICKUP_COIN,CoinSubType.COIN_LUCKYPENNY}},
    {Achievement.GOLDEN_PENNY, {PickupVariant.PICKUP_COIN,CoinSubType.COIN_GOLDEN}},
    {Achievement.BONE_HEARTS, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_BONE}}
}
Tier4Pickups = {
    {nil, {PickupVariant.PICKUP_COIN,CoinSubType.COIN_DIME}},
    {nil, {PickupVariant.PICKUP_ETERNALCHEST,ChestSubType.CHEST_CLOSED}},
    {Achievement.CHARGED_KEY, {PickupVariant.PICKUP_KEY,KeySubType.KEY_CHARGED}},
    {Achievement.WOODEN_CHEST, {PickupVariant.PICKUP_WOODENCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_NORMAL}},
    {Achievement.MEGA_CHEST, {PickupVariant.PICKUP_MEGACHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_BOMBCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_LOCKEDCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_TAROTCARD,RuneList}},
    {nil, {PickupVariant.PICKUP_TAROTCARD,SpecialCardList}}
}
Tier3Pickups = {
    {Achievement.BLACK_SACK, {PickupVariant.PICKUP_GRAB_BAG,SackSubType.SACK_BLACK}},
    {nil, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_BLACK}},
    {nil, {PickupVariant.PICKUP_CHEST,ChestSubType.CHEST_CLOSED}},
    {Achievement.HAUNTED_CHEST, {PickupVariant.PICKUP_HAUNTEDCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_SPIKEDCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_MIMICCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_DOUBLEPACK}},
    {nil, {PickupVariant.PICKUP_GRAB_BAG,SackSubType.SACK_NORMAL}},
    {nil, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_BLENDED}},
    {nil, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_SOUL}}
}
Tier2Pickups = {
    {nil, {PickupVariant.PICKUP_REDCHEST,ChestSubType.CHEST_CLOSED}},
    {nil, {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_DOUBLEPACK}},
    {nil, {PickupVariant.PICKUP_TAROTCARD,ReverseCardList}},
    {nil, {PickupVariant.PICKUP_KEY,KeySubType.KEY_DOUBLEPACK}},
    {nil, {PickupVariant.PICKUP_COIN,CoinSubType.COIN_NICKEL}},
    {Achievement.ROTTEN_HEARTS, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_ROTTEN}},
    {Achievement.EVERYTHING_IS_TERRIBLE, PickupVariant.PICKUP_HEART,HeartSubType.HEART_HALF_SOUL},
    {nil, {PickupVariant.PICKUP_TAROTCARD,NormalCardList}},
    {nil, {PickupVariant.PICKUP_BOMB,BombSubType.BOMB_NORMAL}},
    {nil, {PickupVariant.PICKUP_KEY,KeySubType.KEY_NORMAL}}
}
Tier1Pickups = {
    {nil, {PickupVariant.PICKUP_PILL,0}},
    {Achievement.EVERYTHING_IS_TERRIBLE, {PickupVariant.PICKUP_LIL_BATTERY,BatterySubType.BATTERY_MICRO}},
    {nil, {CustomEnums.PickupVariant.PICKUP_HEART,CustomEnums.HeartSubType.HEART_TAINTED}},
    {nil, {CustomEnums.PickupVariant.PICKUP_HEART,CustomEnums.HeartSubType.HEART_HALF_TAINTED}},
    {Achievement.GOLDEN_HEARTS, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_GOLDEN}},
    {nil, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_FULL}},
    {Achievement.STICKY_NICKELS, {PickupVariant.PICKUP_COIN,CoinSubType.COIN_STICKYNICKEL}},
    {Achievement.SCARED_HEART, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_SCARED}},
    {nil, {PickupVariant.PICKUP_HEART,HeartSubType.HEART_HALF}},
    {nil, {PickupVariant.PICKUP_COIN,CoinSubType.COIN_PENNY}}
}

UtilityCards = {
    Card.CARD_MAGICIAN,
    Card.CARD_HIGH_PRIESTESS,
    Card.CARD_EMPRESS,
    Card.CARD_CHARIOT,
    Card.CARD_STRENGTH,
    Card.CARD_DEATH,
    Card.CARD_DEVIL,
    Card.CARD_TOWER,
    Card.CARD_SUN,
    Card.RUNE_BERKANO,
    Card.RUNE_BLACK,
    Card.CARD_CHAOS,
    Card.CARD_EMERGENCY_CONTACT,
    Card.CARD_HUGE_GROWTH,
    Card.CARD_ERA_WALK,
    Card.CARD_REVERSE_MAGICIAN,
    Card.CARD_REVERSE_EMPRESS,
    Card.CARD_REVERSE_CHARIOT,
    Card.CARD_REVERSE_STRENGTH,
    Card.CARD_SOUL_MAGDALENE,
    Card.CARD_SOUL_JUDAS,
    Card.CARD_SOUL_BLUEBABY,
    Card.CARD_SOUL_EVE,
    Card.CARD_SOUL_SAMSON,
    Card.CARD_SOUL_AZAZEL
}
UtilityPills = {
    PillEffect.PILLEFFECT_BAD_GAS,
    PillEffect.PILLEFFECT_EXPLOSIVE_DIARRHEA,
    PillEffect.PILLEFFECT_PHEROMONES,
    PillEffect.PILLEFFECT_LEMON_PARTY,
    PillEffect.PILLEFFECT_SOMETHINGS_WRONG,
    PillEffect.PILLEFFECT_HORF,
    PillEffect.PILLEFFECT_POWER,
    PillEffect.PILLEFFECT_INFESTED_QUESTION,
    PillEffect.PILLEFFECT_FRIENDS_TILL_THE_END,
    PillEffect.PILLEFFECT_SUNSHINE
}
UtilityActives = {
    CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL,
    CollectibleType.COLLECTIBLE_NECRONOMICON,
    CollectibleType.COLLECTIBLE_TAMMYS_HEAD,
    CollectibleType.COLLECTIBLE_MOMS_BRA,
    CollectibleType.COLLECTIBLE_MOMS_PAD,
    CollectibleType.COLLECTIBLE_SHOOP_DA_WHOOP,
    CollectibleType.COLLECTIBLE_LEMON_MISHAP,
    CollectibleType.COLLECTIBLE_BOOK_OF_SHADOWS,
    CollectibleType.COLLECTIBLE_ANARCHIST_COOKBOOK,
    CollectibleType.COLLECTIBLE_HOURGLASS,
    CollectibleType.COLLECTIBLE_MY_LITTLE_UNICORN,
    CollectibleType.COLLECTIBLE_THE_NAIL,
    CollectibleType.COLLECTIBLE_MONSTROS_TOOTH,
    CollectibleType.COLLECTIBLE_GAMEKID,
    CollectibleType.COLLECTIBLE_PINKING_SHEARS,
    CollectibleType.COLLECTIBLE_BEAN,
    CollectibleType.COLLECTIBLE_RAZOR_BLADE,
    CollectibleType.COLLECTIBLE_PONY,
    CollectibleType.COLLECTIBLE_BEST_FRIEND,
    CollectibleType.COLLECTIBLE_CRACK_THE_SKY,
    CollectibleType.COLLECTIBLE_CANDLE,
    CollectibleType.COLLECTIBLE_SPIDER_BUTT,
    CollectibleType.COLLECTIBLE_WHITE_PONY,
    CollectibleType.COLLECTIBLE_BLOOD_RIGHTS,
    CollectibleType.COLLECTIBLE_TELEPATHY_BOOK,
    CollectibleType.COLLECTIBLE_D10,
    CollectibleType.COLLECTIBLE_RED_CANDLE,
    CollectibleType.COLLECTIBLE_FLUSH,
    CollectibleType.COLLECTIBLE_HEAD_OF_KRAMPUS,
    CollectibleType.COLLECTIBLE_BUTTER_BEAN,
    CollectibleType.COLLECTIBLE_MAGIC_FINGERS,
    CollectibleType.COLLECTIBLE_UNICORN_STUMP,
    CollectibleType.COLLECTIBLE_ISAACS_TEARS,
    CollectibleType.COLLECTIBLE_SCISSORS,
    CollectibleType.COLLECTIBLE_BREATH_OF_LIFE,
    CollectibleType.COLLECTIBLE_BOOMERANG,
    CollectibleType.COLLECTIBLE_MEGA_BEAN,
    CollectibleType.COLLECTIBLE_GLASS_CANNON,
    CollectibleType.COLLECTIBLE_BOX_OF_FRIENDS,
    CollectibleType.COLLECTIBLE_FRIEND_BALL,
    CollectibleType.COLLECTIBLE_TEAR_DETONATOR,
    CollectibleType.COLLECTIBLE_KIDNEY_BEAN,
    CollectibleType.COLLECTIBLE_MEGA_BLAST,
    CollectibleType.COLLECTIBLE_PLAN_C,
    CollectibleType.COLLECTIBLE_PAUSE,
    CollectibleType.COLLECTIBLE_MAMA_MEGA,
    CollectibleType.COLLECTIBLE_WAIT_WHAT,
    CollectibleType.COLLECTIBLE_BROWN_NUGGET,
    CollectibleType.COLLECTIBLE_SHARP_STRAW,
    CollectibleType.COLLECTIBLE_DELIRIOUS,
    CollectibleType.COLLECTIBLE_BLACK_HOLE,
    CollectibleType.COLLECTIBLE_SPRINKLER,
    CollectibleType.COLLECTIBLE_TELEKINESIS,
    CollectibleType.COLLECTIBLE_GOLDEN_RAZOR,
    CollectibleType.COLLECTIBLE_SULFUR,
    CollectibleType.COLLECTIBLE_FREE_LEMONADE,
    CollectibleType.COLLECTIBLE_WAVY_CAP,
    CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES,
    CollectibleType.COLLECTIBLE_SCOOPER,
    CollectibleType.COLLECTIBLE_LARYNX,
    CollectibleType.COLLECTIBLE_SHARP_KEY,
    CollectibleType.COLLECTIBLE_MEGA_MUSH,
    CollectibleType.COLLECTIBLE_MEAT_CLEAVER,
    CollectibleType.COLLECTIBLE_ERASER,
    CollectibleType.COLLECTIBLE_URN_OF_SOULS,
    CollectibleType.COLLECTIBLE_PLUM_FLUTE,
    CollectibleType.COLLECTIBLE_VADE_RETRO,
    CollectibleType.COLLECTIBLE_SPIN_TO_WIN,
    CollectibleType.COLLECTIBLE_JAR_OF_WISPS,
    CollectibleType.COLLECTIBLE_FRIEND_FINDER,
    CollectibleType.COLLECTIBLE_BERSERK,
    CollectibleType.COLLECTIBLE_DARK_ARTS,
    CollectibleType.COLLECTIBLE_SUPLEX,
    CollectibleType.COLLECTIBLE_SUMPTORIUM,
    CollectibleType.COLLECTIBLE_ANIMA_SOLA,
    CollectibleType.COLLECTIBLE_GELLO,
    CollectibleType.COLLECTIBLE_DECAP_ATTACK
}

StyleRanks = {
    {
        Rank = "ULTRAsaac",
        Points = 750,
        Colour = {1,(110 / 255),0}
    },
    {
        Rank = "SSShitstorm",
        Points = 500,
        Colour = {(206 / 255),0,0}
    },
    {
        Rank = "SSadistic",
        Points = 425,
        Colour = {(220 / 255),0,0}
    },
    {
        Rank = "Supreme",
        Points = 350,
        Colour = {1,0,0}
    },
    {
        Rank = "Anarchic",
        Points = 250,
        Colour = {1,(104 / 255),0}
    },
    {
        Rank = "Brutal",
        Points = 200,
        Colour = {(254 / 255),(217 / 255),0}
    },
    {
        Rank = "Chaotic",
        Points = 150,
        Colour = {(73 / 255),1,0}
    },
    {
        Rank = "Destructive",
        Points = 100,
        Colour = {0,(146 / 255),1}
    },
    {
        Rank = "Lame...",
        Points = 0,
        Colour = {(131 / 255),(131 / 255),(131 / 255)}
    }
}

StyleToasts = {}

function mod:PostNewRoom()
    timerRoom = 0
    hitNum = 0
    timerKill = 0
    timerBossKill = 0
    InitialisePoints()
    UpdatePoints(0)
end

function mod:PreRoomEntitySpawn()
    timerRoom = 0
    hitNum = 0
    timerKill = 0
    timerBossKill = 0
    InitialisePoints()
    UpdatePoints(0)
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
    local ItemPool = Game():GetItemPool()
    local ItemConfig = Isaac.GetItemConfig()

    local Room = Game():GetRoom()
    local RoomCentre = Room:GetCenterPos()

    local GameData = Isaac.GetPersistentGameData()
    local rng = player:GetCollectibleRNG(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER)

    if Room:GetType() == RoomType.ROOM_BOSS then
        if timerRoom <= 150 then
            table.insert(StyleToasts,{[1] = "+Big UltraSpeedrun",[2] = RoomCentre})
            local bonus = 600 + 4 * (bossHealth / 3.5)
            UpdatePoints(bonus)
        elseif timerRoom <= 300 then
            table.insert(StyleToasts,{[1] = "+Big SuperSpeedrun",[2] = RoomCentre})
            local bonus = 450 + 3 * (bossHealth / 3.5)
            UpdatePoints(bonus)
        elseif timerRoom <= 450 then
            table.insert(StyleToasts,{[1] = "+Big Speedrun",[2] = RoomCentre})
            local bonus = 300 + 2 * (bossHealth / 3.5)
            UpdatePoints(bonus)
        end
    else
        if timerRoom <= 150 then
            table.insert(StyleToasts,{[1] = "+UltraSpeedrun",[2] = RoomCentre})
            local bonus = 200 + 20 * (enemyNum / 5)
            UpdatePoints(bonus)
        elseif timerRoom <= 300 then
            table.insert(StyleToasts,{[1] = "+SuperSpeedrun",[2] = RoomCentre})
            local bonus = 150 + 15 * (enemyNum / 5)
            UpdatePoints(bonus)
        elseif timerRoom <= 450 then
            table.insert(StyleToasts,{[1] = "+Speedrun",[2] = RoomCentre})
            local bonus = 100 + 10 * (enemyNum / 5)
            UpdatePoints(bonus)
        end
    end

    if player:HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER) then
        if currentRank.Rank == "ULTRAsaac" then
            repeat
                item = ItemPool:GetCollectible(ItemPoolType.POOL_TREASURE)
            until ItemConfig:GetCollectible(item).Quality >= 3
            local pos = Room:FindFreePickupSpawnPosition(player.Position)

            Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE,pos,Vector.Zero,nil,item,Room:GetSpawnSeed())
        elseif currentRank.Rank == "SSShitstorm" then
            lap = 0
            repeat
                lap = lap + 1

                local rand = rng:RandomInt(#Tier5Pickups) + 1
                for i,pickup in ipairs(Tier5Pickups) do
                    print(pickup[1],pickup[2])
                    if i == rand and (pickup[1] == nil or GameData:Unlocked(pickup[1])) then
                        local pos = Room:FindFreePickupSpawnPosition(player.Position)

                        Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                        success = true
                        break
                    end
                end
            until success == true or lap == 20

            if success ~= true then
                local pos = Room:FindFreePickupSpawnPosition(player.Position)

                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_KEY,pos,Vector.Zero,nil,KeySubType.KEY_GOLDEN,Room:GetSpawnSeed())
                pos = nil
            else
                success = nil
            end
        elseif currentRank.Rank == "SSadistic" then
            lap = 0
            repeat
                lap = lap + 1

                local rand = rng:RandomInt(#Tier4Pickups) + 1
                for i,pickup in ipairs(Tier4Pickups) do
                    print(pickup[1],pickup[2])
                    if i == rand and (pickup[1] == nil or GameData:Unlocked(pickup[1])) then
                        local Variant = sFunc:getEntry(pickup[2],1)
                        local SubType = sFunc:getEntry(pickup[2],2)

                        if SubType == RuneList or SubType == SpecialCardList then
                            lap2 = 0
                            repeat
                                lap2 = lap2 + 1

                                local rand = rng:RandomInt(#SubType) + 1
                                for i,consumable in ipairs(SubType) do
                                    if i == rand and (consumable[1] == nil or GameData:Unlocked(consumable[1])) then
                                        local pos = Room:FindFreePickupSpawnPosition(player.Position)

                                        Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,consumable[2],Room:GetSpawnSeed())
                                        success = true
                                        break
                                    end
                                end
                            until success == true or lap2 == 20
                        else
                            local pos = Room:FindFreePickupSpawnPosition(player.Position)

                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                            success = true
                            break
                        end
                    end
                end
            until success == true or lap == 20

            if success ~= true then
                local pos = Room:FindFreePickupSpawnPosition(player.Position)

                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_LIL_BATTERY,pos,Vector.Zero,nil,BatterySubType.BATTERY_NORMAL,Room:GetSpawnSeed())
            else
                success = nil
            end
        elseif currentRank.Rank == "Supreme" then
            repeat
                item = ItemPool:GetCollectible(ItemPoolType.POOL_TREASURE)
            until ItemConfig:GetCollectible(item).Quality == 2
            local pos = Room:FindFreePickupSpawnPosition(player.Position)

            Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE,Room:GetCenterPos(),Vector.Zero,nil,item,Room:GetSpawnSeed())
        elseif currentRank.Rank == "Anarchic" then
            lap = 0
            repeat
                lap = lap + 1

                local rand = rng:RandomInt(#Tier3Pickups) + 1
                for i,pickup in ipairs(Tier3Pickups) do
                    print(pickup[1],pickup[2])
                    if i == rand and (pickup[1] == nil or GameData:Unlocked(pickup[1])) then
                        local Variant = sFunc:getEntry(pickup[2],1)
                        local SubType = sFunc:getEntry(pickup[2],2)
                        local pos = Room:FindFreePickupSpawnPosition(player.Position)

                        Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                        success = true
                        break
                    end
                end
            until success == true or lap == 20

            if success ~= true then
                local pos = Room:FindFreePickupSpawnPosition(player.Position)

                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_MIMICCHEST,pos,Vector.Zero,nil,ChestSubType.CHEST_CLOSED,Room:GetSpawnSeed())
            else
                success = nil
            end
        elseif currentRank.Rank == "Brutal" then
            repeat
                item = ItemPool:GetCollectible(ItemPoolType.POOL_TREASURE)
            until ItemConfig:GetCollectible(item).Quality <= 1
            local pos = Room:FindFreePickupSpawnPosition(player.Position)

            Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE,pos,Vector.Zero,nil,item,Room:GetSpawnSeed())
        elseif currentRank.Rank == "Chaotic" then
            lap = 0
            repeat
                lap = lap + 1

                local rand = rng:RandomInt(#Tier2Pickups) + 1
                for i,pickup in ipairs(Tier2Pickups) do
                    print(pickup[1],pickup[2])
                    if i == rand and (pickup[1] == nil or GameData:Unlocked(pickup[1])) then
                        local Variant = sFunc:getEntry(pickup[2],1)
                        local SubType = sFunc:getEntry(pickup[2],2)

                        if SubType == ReverseCardList or SubType == NormalCardList then
                            lap2 = 0
                            repeat
                                lap2 = lap2 + 1

                                local rand = rng:RandomInt(#SubType) + 1
                                for i,consumable in ipairs(SubType) do
                                    if i == rand and (consumable[1] == nil or GameData:Unlocked(consumable[1])) then
                                        local pos = Room:FindFreePickupSpawnPosition(player.Position)

                                        Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,consumable[2],Room:GetSpawnSeed())
                                        success = true
                                        break
                                    end
                                end
                            until success == true or lap2 == 20
                        else
                            local pos = Room:FindFreePickupSpawnPosition(player.Position)

                            Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                            success = true
                            break
                        end
                    end
                end
            until success == true or lap == 20

            if success ~= true then
                local pos = Room:FindFreePickupSpawnPosition(player.Position)

                Game():Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COIN,pos,Vector.Zero,nil,CoinSubType.COIN_NICKEL,Room:GetSpawnSeed())
            else
                success = nil
            end
        elseif currentRank.Rank == "Destructive" then
            lap = 0
            repeat
                lap = lap + 1

                local rand = rng:RandomInt(#Tier1Pickups) + 1
                for i,pickup in ipairs(Tier1Pickups) do
                    print(pickup[1],pickup[2])
                    if i == rand and (pickup[1] == nil or GameData:Unlocked(pickup[1])) then
                        local Variant = sFunc:getEntry(pickup[2],1)
                        local SubType = sFunc:getEntry(pickup[2],2)
                        local pos = Room:FindFreePickupSpawnPosition(player.Position)

                        Game():Spawn(EntityType.ENTITY_PICKUP,Variant,pos,Vector.Zero,nil,SubType,Room:GetSpawnSeed())
                        success = true
                        break
                    end
                end
            until success == true or lap == 20

            if success ~= true then
                local pos = Room:FindFreePickupSpawnPosition(player.Position)
                
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
                local bonus = 45 * (BossKillStreak - 1)
                UpdatePoints(bonus)
            end
            timerBossKill = 60
            UpdatePoints(30)
        else
            KillStreak = KillStreak + 1
            if timerKill > 0 
            and KillStreak - 1 > 0 
            then
                table.insert(StyleToasts,{[1] = tostring("+Multikill x" .. KillStreak - 1),[2] = entity.Position})
                local bonus = 15 * (KillStreak - 1)
                UpdatePoints(bonus)
            end
            timerKill = 60
            UpdatePoints(10)
        end
    end
end

function mod:UseCard(card,player,_)
    if sFunc:isEntry(UtilityCards,card) then
        table.insert(StyleToasts,{[1] = "+Utility",[2] = player.Position})
        UpdatePoints(25)
    end
end

function mod:UsePill(pill,player,_)
    if sFunc:isEntry(UtilityPills,pill) then
        table.insert(StyleToasts,{[1] = "+Utility",[2] = player.Position})
        UpdatePoints(25)
    end
end

function mod:UseItem(item,_,player,_,_,_)
    if sFunc:isEntry(UtilityActives,item) then
        table.insert(StyleToasts,{[1] = "+Utility",[2] = player.Position})
        UpdatePoints(20)
    end
end

function mod:EntityTakeDMG(entity,Amount,_,Source,_)
    if entity:ToPlayer() and sFunc:isSacrificeDamage(entity,Source) == false then
        table.insert(StyleToasts,{[1] = "-Damage",[2] = entity.Position})
        local bonus = 0 - 20 - 5 * hitNum
        UpdatePoints(bonus)
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
                UpdatePoints(120)
            else
                table.insert(StyleToasts,{[1] = "+Explosion",[2] = entity.Position})
                UpdatePoints(40)
            end
        elseif Source.Entity:ToFamiliar() then
            local familiar = Source.Entity:ToFamiliar()
            if familiar.OrbitLayer ~= -1
            and entity:ToNPC():IsBoss() == true
            then
                table.insert(StyleToasts,{[1] = "+Big Flash Strats",[2] = entity.Position})
                UpdatePoints(90)
            elseif (familiar.OrbitLayer == -1
            or (Source.Entity.Type == 3 and Source.Entity.Variant == 43))
            and entity:ToNPC():IsBoss() == true
            then
                table.insert(StyleToasts,{[1] = "+Big Helping Hand",[2] = entity.Position})
                UpdatePoints(60)
            elseif familiar.OrbitLayer ~= -1 then
                table.insert(StyleToasts,{[1] = "+Flash Strats",[2] = entity.Position})
                UpdatePoints(30)
            elseif familiar.OrbitLayer == -1
            or (Source.Entity.Type == 3 and Source.Entity.Variant == 43)
            then
                table.insert(StyleToasts,{[1] = "+Helping Hand",[2] = entity.Position})
                UpdatePoints(20)
            end
        elseif (Source.Type == EntityType.ENTITY_MOVABLE_TNT
        or Source.Type == EntityType.ENTITY_FIREPLACE) 
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Envirokill",[2] = entity.Position})
                UpdatePoints(75)
            else
                table.insert(StyleToasts,{[1] = "+Envirokill",[2] = entity.Position})
                UpdatePoints(25)
            end
        elseif sFunc:isPlayerProjectile(Source.Entity) == false
        and sFunc:isFamiliarProjectile(Source.Entity) == false
        and Source.IsFriendly == true 
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Betrayal",[2] = entity.Position})
                UpdatePoints(45)
            else
                table.insert(StyleToasts,{[1] = "+Betrayal",[2] = entity.Position})
                UpdatePoints(15)
            end
        elseif sFunc:isPlayerProjectile(Source.Entity) == false
        and sFunc:isFamiliarProjectile(Source.Entity) == false
        and Source.Type ~= EntityType.ENTITY_EFFECT and Source.Variant ~= EffectVariant.PLAYER_CREEP_GREEN
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Friendly Fire",[2] = entity.Position})
                UpdatePoints(150)
            else
                table.insert(StyleToasts,{[1] = "+Friendly Fire",[2] = entity.Position})
                UpdatePoints(50)
            end
        elseif (sFunc:isFamiliarProjectile(Source.Entity) == true
        or (Source.Entity.Type == 3 and Source.Entity.Variant == 43))
        and entity:ToNPC()
        and entity.HitPoints - Amount <= 0 
        then
            if entity:ToNPC():IsBoss() == true then
                table.insert(StyleToasts,{[1] = "+Big Helping Hand",[2] = entity.Position})
                UpdatePoints(60)
            else
                table.insert(StyleToasts,{[1] = "+Helping Hand",[2] = entity.Position})
                UpdatePoints(20)
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
            UpdatePoints(150)
        else
            table.insert(StyleToasts,{[1] = "+Friendly Fire",[2] = entity.Position})
            UpdatePoints(50)
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
            UpdatePoints(75)
        else
            table.insert(StyleToasts,{[1] = "+Envirokill",[2] = entity.Position})
            UpdatePoints(25)
        end
    end
end

function mod:PreTriggerPlayerDeath(player)
    table.insert(StyleToasts,{[1] = "-Death",[2] = player.Position})
    UpdatePoints(-200)
end

function mod:PostAddCollectible(_,_,_,_,_,_)
    InitialisePoints()
    UpdatePoints(0)
end

function InitialisePoints()
    if Isaac.GetPlayer():HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER) then
        points = 0
    end
end

function UpdatePoints(amount)
    if Isaac.GetPlayer():HasCollectible(CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER) then
        points = points + amount
        
        for _,v in pairs(StyleRanks) do
            if points >= v.Points then
                currentRank = v
                break
            end
        end
    end
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
        local xPos = (20 * Options.HUDOffset) + 50
        if HeartManager:GetHeartCount() <= 12 then
            yPos = (20 * Options.HUDOffset) + 21
        else
            yPos = (20 * Options.HUDOffset) + 30
        end

        Isaac.RenderText(currentRank.Rank,xPos,yPos,currentRank.Colour[1],currentRank.Colour[2],currentRank.Colour[3],1)

        for i,v in ipairs(StyleToasts) do
            local toast = v[1]
            local pos = v[2]
            if not v[3] then 
                transparency = 70
            else
                transparency = v[3]
            end
            local screenPos = Isaac.WorldToScreen(pos)
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
mod:AddCallback(ModCallbacks.MC_POST_ADD_COLLECTIBLE, mod.PostAddCollectible, CustomEnums.CollectibleType.COLLECTIBLE_STYLE_METER)
mod:AddCallback(ModCallbacks.MC_POST_RENDER, mod.PostRender)
local validEntities = {
    {10,0,0}, -- Frowning Gaper
    {10,1,0}, -- Gaper
    {10,2,0}, -- Flaming Gaper
    {10,3,1}, -- Rotten Gaper
    {10,3,2}, -- Rotten Gaper
    {10,3,3}, -- Rotten Gaper
    {10,3,4}, -- Rotten Gaper
    {10,3,5}, -- Rotten Gaper
    {11,0,0}, -- Gusher
    {11,1,0}, -- Pacer
    {12,0,0}, -- Horf
    {13,0,0}, -- Fly
    {14,0,0}, -- Pooter
    {14,1,0}, -- Super Pooter
    {14,2,0}, -- Tainted Pooter
    {15,0,0}, -- Clotty
    {15,1,0}, -- Clot
    {15,2,0}, -- I.Blob
    {15,3,0}, -- Grilled Clotty
    {16,0,0}, -- Mulligan
    {16,1,0}, -- Mulligoon
    {16,2,0}, -- Mulliboom
    {18,0,0}, -- Attack Fly
    {21,0,0}, -- Maggot
    {22,0,0}, -- Hive
    {22,1,0}, -- Drowned Hive
    {22,2,0}, -- Holy Mulligan
    {22,3,0}, -- Tainted Mulligan
    {23,0,0}, -- Charger
    {23,1,0}, -- Drowned Charger
    {23,2,0}, -- Dank Charger
    {23,3,0}, -- Carrion Princess
    {24,0,0}, -- Globin
    {24,1,0}, -- Gazing Globin
    {24,2,0}, -- Dank Globin
    {24,3,0}, -- Cursed Globin
    {25,0,0}, -- Boom Fly
    {25,1,0}, -- Red Boom Fly
    {25,2,0}, -- Drowned Boom Fly
    {25,3,0}, -- Dragon Fly
    {25,3,1}, -- Dragon Fly X
    {25,4,0}, -- Bone Fly
    {25,5,0}, -- Sick Boom Fly
    {25,6,0}, -- Tainted Boom Fly
    {26,0,0}, -- Maw
    {26,1,0}, -- Red Maw
    {26,2,0}, -- Psychic Maw
    {27,0,0}, -- Host
    {27,1,0}, -- Red Host
    {27,3,0}, -- Hard Host
    {29,0,0}, -- Hopper
    {29,1,0}, -- Trite
    {29,2,0}, -- Eggy
    {29,3,0}, -- Tainted Hopper
    {30,0,0}, -- Boil
    {30,1,0}, -- Gut
    {30,2,0}, -- Sack
    {31,0,0}, -- Spitty
    {31,1,0}, -- Tainted Spitty
    {32,0,0}, -- Brain
    {34,0,0}, -- Leaper
    {34,1,0}, -- Sticky Leaper
    {35,0,0}, -- Mr. Maw
    {35,2,0}, -- Mr. Red Maw
    {38,0,0}, -- Baby
    {38,1,0}, -- Angelic Baby
    {38,1,1}, -- Angelic Baby (small)
    {38,3,0}, -- Wrinkly Baby
    {39,0,0}, -- Vis
    {39,1,0}, -- Double Vis
    {39,2,0}, -- Chubber
    {39,3,0}, -- Scarred Double Vis
    {40,0,0}, -- Guts
    {40,1,0}, -- Scarred Guts
    {40,2,0}, -- Slog
    {41,0,0}, -- Knight
    {41,1,0}, -- Selfless Knight
    {41,2,0}, -- Loose Knight
    {41,3,0}, -- Brainless Knight
    {41,4,0}, -- Black Knight
    {44,0,0}, -- Poky
    {53,0,0}, -- Dople
    {53,1,0}, -- Evil Twin
    {54,0,0}, -- Flaming Hopper
    {55,0,0}, -- Leech
    {55,1,0}, -- Kamikaze Leech
    {55,2,0}, -- Holy Leech
    {56,0,0}, -- Lump
    {57,0,0}, -- MemBrain
    {57,1,0}, -- Mama Guts
    {57,2,0}, -- Dead Meat
    {58,0,0}, -- Para-Bite
    {58,1,1}, -- Scarred Para-Bite
    {59,0,0}, -- Fred
    {60,0,0}, -- Eye
    {60,1,0}, -- Bloodshot Eye
    {60,2,0}, -- Holy Eye
    {61,0,0}, -- Sucker
    {61,1,0}, -- Spit
    {61,2,0}, -- Soul Sucker
    {61,3,0}, -- Ink
    {61,4,0}, -- Mama Fly
    {61,5,0}, -- Bulb
    {61,6,0}, -- Bloodfly
    {61,7,0}, -- Tainted Sucker
    {66,10,0}, -- Death Scythe
    {68,10,0}, -- Peep Eye
    {68,11,0}, -- Bloat Eye
    {77,0,0}, -- Embryo
    {80,0,0}, -- Moter
    {85,0,0}, -- Spider
    {86,0,0}, -- Keeper
    {87,0,0}, -- Gurgle
    {87,1,0}, -- Crackle
    {88,0,0}, -- Walking Boil
    {88,1,0}, -- Walking Gut
    {88,2,0}, -- Walking Sack
    {89,0,0}, -- Buttlicker
    {90,0,0}, -- Hanger
    {91,0,0}, -- Swarmer
    {93,0,0}, -- Mask + Heart
    {93,1,0}, -- Mask II + 1/2 Heart
    {94,0,0}, -- Big Spider
    {204,0,0}, -- Mobile Host
    {205,0,0}, -- Nest
    {206,0,0}, -- Baby Long Legs
    {206,1,0}, -- Small Baby Long Legs
    {207,0,0}, -- Crazy Long Legs
    {207,1,0}, -- Small Crazy Long Legs
    {208,0,0}, -- Fatty
    {208,1,0}, -- Pale Fatty
    {208,2,0}, -- Flaming Fatty
    {209,0,0}, -- Fat Sack
    {210,0,0}, -- Blubber
    {211,0,0}, -- Half Sack
    {212,0,0}, -- Death's Head
    {212,1,0}, -- Dank Death's Head
    {212,2,0}, -- Cursed Death's Head
    {212,3,0}, -- Brimstone Death's Head
    {212,4,0}, -- Redskull
    {213,0,0}, -- Mom's Hand
    {214,0,0}, -- Level 2 Fly
    {215,0,0}, -- Level 2 Spider
    {216,0,0}, -- Swinger
    {217,0,0}, -- Dip
    {217,1,0}, -- Corn
    {217,2,0}, -- Brownie Corn
    {217,3,0}, -- Big Corn
    {219,0,0}, -- Wizoob
    {220,0,0}, -- Squirt
    {220,1,0}, -- Dank Squirt
    {221,0,0}, -- Cod Worm
    {222,0,0}, -- Ring Fly
    {223,0,0}, -- Dinga
    {224,0,0}, -- Oob
    {225,0,0}, -- Black Maw
    {226,0,0}, -- Skinny
    {226,1,0}, -- Rotty
    {226,2,0}, -- Crispy
    {227,0,0}, -- Bony
    {227,1,0}, -- Holy Bony
    {228,0,0}, -- Homunculus
    {229,0,0}, -- Tumor
    {229,1,0}, -- Planetoid
    {230,0,0}, -- Camillo Jr.
    {231,0,0}, -- Nerve Ending
    {231,1,0}, -- Nerve Ending 2
    {234,0,0}, -- One Tooth
    {237,0,0}, -- Gurgling
    {238,0,0}, -- Splasher
    {239,0,0}, -- Grub
    {240,0,0}, -- Wall Creep
    {240,1,0}, -- Soy Creep
    {240,3,0}, -- Tainted Soy Creep
    {241,0,0}, -- Rage Creep
    {242,0,0}, -- Blind Creep
    {243,0,0}, -- Conjoined Spitty
    {244,0,0}, -- Round Worm
    {244,1,0}, -- Tube Worm
    {244,2,0}, -- Tainted Round Worm
    {244,3,0}, -- Tainted Tube Worm
    {246,0,0}, -- Ragling
    {246,1,0}, -- Rag Man's Ragling
    {247,0,0}, -- Flesh Mobile Host
    {248,0,0}, -- Psychic Horf
    {249,0,0}, -- Full Fly
    {250,0,0}, -- Ticking Spider
    {251,0,0}, -- Begotten
    {252,0,0}, -- Nulls
    {253,0,0}, -- Psy Tumor
    {254,0,0}, -- Floating Knight
    {255,0,0}, -- Night Crawler
    {256,0,0}, -- Dart Fly
    {257,0,0}, -- Conjoined Fatty
    {257,1,0}, -- Blue Conjoined Fatty
    {258,0,0}, -- Fat Bat
    {259,0,0}, -- Imp
    {260,10,0}, -- Lil' Haunt
    {276,0,0}, -- Roundy
    {277,0,0}, -- Black Bony
    {278,0,0}, -- Black Globin
    {279,0,0}, -- Black Globin's Head
    {280,0,0}, -- Black Globin's Body
    {281,0,0}, -- Swarm
    {282,0,0}, -- Mega Clotty
    {283,0,0}, -- Bone Knight
    {284,0,0}, -- Cyclopia
    {285,0,0}, -- Red Ghost
    {286,0,0}, -- Flesh Death's Head
    {287,0,0}, -- Mom's Dead Hand
    {288,0,0}, -- Dukie
    {289,0,0}, -- Ulcer
    {290,0,0}, -- Meatball
    {296,0,0}, -- Hush Fly
    {297,0,0}, -- Blue Gaper
    {298,0,0}, -- Blue Boil
    {299,0,0}, -- Greed Gaper
    {300,0,0}, -- Mushroom
    {301,0,0}, -- Poison Mind
    {302,0,0}, -- Stoney
    {302,10,0}, -- Cross Stoney
    {303,0,0}, -- Blister
    {304,0,0}, -- The Thing
    {305,0,0}, -- Ministro
    {306,0,0}, -- Portal
    {306,1,0}, -- Lil Portal
    {307,0,0}, -- Tar Boy
    {308,0,0}, -- Fistuloid
    {309,0,0}, -- Gush
    {310,0,0}, -- Leper
    {310,1,0}, -- Leper Flesh
    --{311,0,0}, -- Mr. Mine
    {404,1,0}, -- Dark Ball
    {409,1,0}, -- Purple Ball
    {805,0,0}, -- Bishop
    {806,0,0}, -- Bubbles
    {807,0,0}, -- Wraith
    {808,0,0}, -- Willo
    {810,0,0}, -- Small Leech
    {811,0,0}, -- Deep Gaper
    {812,0,0}, -- Sub Horf
    {812,1,0}, -- Tainted Sub Horf
    {813,0,0}, -- Blurb
    {814,0,0}, -- Strider
    {815,0,0}, -- Fissure
    {816,0,0}, -- Polty
    {816,1,0}, -- Kineti
    {817,0,0}, -- Prey
    {817,1,0}, -- Mullighoul
    {818,0,1}, -- Rock Spider
    {818,0,2}, -- Rock Spider
    {818,0,3}, -- Rock Spider
    {818,1,1}, -- Tinted Rock Spider
    {818,1,2}, -- Tinted Rock Spider
    {818,1,3}, -- Tinted Rock Spider
    {818,2,1}, -- Coal Spider
    {818,2,2}, -- Coal Spider
    {818,2,3}, -- Coal Spider
    {819,0,0}, -- Fly Bomb
    {820,0,0}, -- Danny
    {820,1,0}, -- Coal Boy
    {821,0,0}, -- Blaster
    {822,0,0}, -- Bouncer
    {823,0,0}, -- Quakey
    {824,0,0}, -- Gyro
    {824,1,0}, -- Grilled Gyro
    --{825,0,0}, -- Fire Worm
    {826,0,0}, -- Hardy
    {827,0,0}, -- Faceless
    {827,1,0}, -- Tainted Faceless
    {828,0,0}, -- Necro
    {829,0,0}, -- Mole
    {829,1,0}, -- Tainted Mole
    {830,0,0}, -- Big Bony
    {831,0,0}, -- Gutted Fatty
    {831,10,0}, -- Gutted Fatty Eye
    {831,20,0}, -- Festering Guts
    {832,0,0}, -- Exorcist
    {832,1,0}, -- Fanatic
    {833,0,0}, -- Candler
    {834,0,0}, -- Whipper
    {834,1,0}, -- Snapper
    {834,2,0}, -- Flagellant
    {835,0,0}, -- Peeping Fatty
    {836,0,0}, -- Vis Versa
    {838,0,0}, -- Level 2 Willo
    {840,0,0}, -- Pon
    {841,0,0}, -- Revenant
    {841,1,0}, -- Quad Revenant
    {844,0,0}, -- Bombgagger
    {850,0,0}, -- Level 2 Gaper
    {850,1,0}, -- Level 2 Horf
    {850,2,0}, -- Level 2 Gusher
    {851,0,0}, -- Twitchy
    {853,0,0}, -- Small Maggot
    {854,0,0}, -- Adult Leech
    {855,0,0}, -- Level 2 Charger
    {855,1,0}, -- Elleech
    {856,0,0}, -- Gasbag
    {857,0,0}, -- Cohort
    {859,0,0}, -- Floast
    {860,0,0}, -- Unborn
    {861,0,0}, -- Pustule
    {862,0,0}, -- Cyst
    {863,0,1}, -- Morningstar
    {863,0,2}, -- Morningstar
    {864,0,0}, -- Mockulus
    {865,0,0}, -- Evis
    {868,0,0}, -- Army Fly
    {869,0,0}, -- Migraine
    {870,0,0}, -- Drip
    {871,0,0}, -- Splurt
    {872,0,0}, -- Cloggy
    {873,0,0}, -- Fly Trap
    {874,0,0}, -- Gas Dwarf
    {875,0,0}, -- Poot Mine
    {876,0,0}, -- Dump
    {876,1,0}, -- Dump Head
    {878,0,0}, -- Butt Slicker
    {879,0,0}, -- Bloaty
    {880,0,0}, -- Flesh Maiden
    {881,0,0}, -- Needle
    {881,1,0}, -- Pasty
    {882,0,0}, -- Dust
    {883,0,0}, -- Baby Begotten
    {884,0,0}, -- Swarm Spider
    {885,0,0}, -- Cultist
    {885,1,0}, -- Blood Cultist
    {886,0,1}, -- Vis Fatty
    {886,1,0}, -- Fetal Demon
    {887,0,0}, -- Dusty Death's Head
    {888,0,0}, -- Shady
    {889,0,0}, -- Clickety Clack
    {890,0,0}, -- Maze Roamer
    {891,0,0}, -- Goat
    {891,1,0}, -- Black Goat
    {892,0,0}, -- Poofer
    {912,20,0}, -- Dead Isaac
}

local nonChampionEntities = {
    {868,0,0}, -- Army Fly
    {18,0,0}, -- Attack Fly
    {251,0,0}, -- Begotten
    {217,3,0}, -- Big Corn
    {94,0,0}, -- Big Spider
    {805,0,0}, -- Bishop
    {61,6,0}, -- Bloodfly
    {41,3,0}, -- Brainless Knight
    {212,3,0}, -- Brimstone Death's Head
    {217,2,0}, -- Brownie Corn
    {61,5,0}, -- Bulb
    {89,0,0}, -- Buttlicker
    {818,2,1}, -- Coal Spider
    {818,2,2}, -- Coal Spider
    {818,2,3}, -- Coal Spider
    {217,1,0}, -- Corn
    {302,10,0}, -- Cross Stoney
    {212,2,0}, -- Cursed Death's Head
    {212,1,0}, -- Dank Death's Head
    {220,1,0}, -- Dank Squirt
    {256,0,0}, -- Dart Fly
    {912,20,0}, -- Dead Isaac
    {212,0,0}, -- Death's Head
    {223,0,0}, -- Dinga
    {217,0,0}, -- Dip
    {870,0,0}, -- Drip
    {887,0,0}, -- Dusty Death's Head
    {855,1,0}, -- Elleech
    {77,0,0}, -- Embryo
    {815,0,0}, -- Fissure
    {286,0,0}, -- Flesh Death's Head
    {13,0,0}, -- Fly
    {239,0,0}, -- Grub
    {228,0,0}, -- Homunculus
    {296,0,0}, -- Hush Fly
    {838,0,0}, -- Level 2 Willo
    {306,1,0}, -- Lil Portal
    {93,0,0}, -- Mask + Heart
    {93,1,0}, -- Mask II + 1/2 Heart
    {287,0,0}, -- Mom's Dead Hand
    {213,0,0}, -- Mom's Hand
    {80,0,0}, -- Moter
    {35,0,0}, -- Mr. Maw
    {311,0,0}, -- Mr. Mine
    {35,2,0}, -- Mr. Red Maw
    {881,0,0}, -- Needle
    {231,0,0}, -- Nerve Ending
    {231,1,0}, -- Nerve Ending 2
    {881,1,0}, -- Pasty
    {892,0,0}, -- Poofer
    {306,0,0}, -- Portal
    {285,0,0}, -- Red Ghost
    {212,4,0}, -- Redskull
    {222,0,0}, -- Ring Fly
    {222,0,1}, -- Ring Fly
    {818,0,1}, -- Rock Spider
    {818,0,2}, -- Rock Spider
    {818,0,3}, -- Rock Spider
    {888,0,0}, -- Shady
    {810,0,0}, -- Small Leech
    {853,0,0}, -- Small Maggot
    {240,1,0}, -- Soy Creep
    {85,0,0}, -- Spider
    {871,0,0}, -- Splurt
    {220,0,0}, -- Squirt
    {302,0,0}, -- Stoney
    {814,0,0}, -- Strider
    {281,0,0}, -- Swarm
    {884,0,0}, -- Swarm Spider
    {25,6,0}, -- Tainted Boom Fly
    {827,1,0}, -- Tainted Faceless
    {29,3,0}, -- Tainted Hopper
    {829,1,0}, -- Tainted Mole
    {22,3,0}, -- Tainted Mulligan
    {14,2,0}, -- Tainted Pooter
    {244,2,0}, -- Tainted Round Worm
    {240,3,0}, -- Tainted Soy Creep
    {31,1,0}, -- Tainted Spitty
    {812,1,0}, -- Tainted Sub Horf
    {61,7,0}, -- Tainted Sucker
    {244,3,0}, -- Tainted Tube Worm
    {818,1,1}, -- Tinted Rock Spider
    {818,1,2}, -- Tinted Rock Spider
    {818,1,3}, -- Tinted Rock Spider
    {808,0,0}, -- Willo
    {219,0,0}, -- Wizoob
    {38,1,1}, -- Angelic Baby (small)
    {831,20,0}, -- Festering Guts
    {832,0,0}, -- Exorcist
    {832,1,0}, -- Fanatic
    {886,1,0}, -- Fetal Demon
    {216,0,0}, -- Swinger
    {216,10,0} -- Swinger Head
}

entities = {}

if EID then
    EID:addCollectible(CustomEnums.CollectibleType.COLLECTIBLE_ENEMY_SPINDOWN, "# Rerolls all enemies in the room by decreasing their internal ID by one")
end

function mod:UseItem(_,_,_,_,_,_)
    for _,entity in ipairs(Isaac.GetRoomEntities()) do
        local EntityNPC = entity:ToNPC()
        if entity.Type == EntityType.ENTITY_FIRE_WORM then
            local newEntity = Game():Spawn(EntityType.ENTITY_GYRO,1,entity.Position,entity.Velocity,nil,0,entity.InitSeed)
            entity:Remove()
        elseif entity.Type == EntityType.ENTITY_PREY and entity.Variant == 0 then
            local newEntity = Game():Spawn(EntityType.ENTITY_POLTY,1,entity.Position,entity.Velocity,nil,0,entity.InitSeed)
            entity:Remove()
        elseif entity.Type == EntityType.ENTITY_MR_MINE then
            local newEntity = Game():Spawn(EntityType.ENTITY_LEPER,1,entity.Position,entity.Velocity,nil,0,entity.InitSeed)
            entity:Remove()
        elseif entity.Type == EntityType.ENTITY_RING_OF_FLIES then
            local newEntity = Game():Spawn(EntityType.ENTITY_COD_WORM,0,entity.Position,entity.Velocity,nil,0,entity.InitSeed)
            entity:Remove()
        elseif entity.Type == EntityType.ENTITY_HEART then
            entity:Remove()
        elseif sFunc:isValidEntity(entity,validEntities) == true then
            local index = sFunc:getIndex(validEntities,{entity.Type,entity.Variant,entity.SubType})
            if index - 1 > 0 then
                local EntityID = sFunc:getEntry(validEntities,index - 1)

                local Type = sFunc:getEntry(EntityID,1)
                local Variant = sFunc:getEntry(EntityID,2)
                local SubType = sFunc:getEntry(EntityID,3)

                local newEntity = Game():Spawn(Type,Variant,entity.Position,entity.Velocity,nil,SubType,entity.InitSeed)
                if EntityNPC:GetChampionColorIdx() ~= -1 and sFunc:isValidEntity(newEntity,nonChampionEntities) == false then
                    newEntity:ToNPC():MakeChampion(entity.InitSeed,EntityNPC:GetChampionColorIdx())
                end
                entity:Remove()
            else
                local newEntity = Game():Spawn(EntityType.ENTITY_EFFECT,EffectVariant.POOF01,entity.Position,Vector(0,0),nil,0,entity.InitSeed)
                entity:Remove()
                entities[newEntity] = newEntity:GetSprite()
                entities[newEntity]:Play("Poof",true)
            end
        end
    end
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseItem, CustomEnums.CollectibleType.COLLECTIBLE_ENEMY_SPINDOWN)
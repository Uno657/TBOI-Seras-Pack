--[[
    EID Markup Docs: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

    Dependencies:
     - REPENTOGON

    FINAL TODO:
     - Add compat with mods that fuck with hearts or add new ones (fiend folio, mantle rework, theres prob more)
]]

mod = RegisterMod("More Alt Floors", 1)

SaveManager = include("scripts.utility.save_manager")
sFunc = include("scripts.utility.sFunc")
HeartManager = require("scripts.pickup_Tainted-Heart")

SaveManager.Init(mod)

if not REPENTOGON then
    -- implement this rgon check later :)
end

if EID then
    local sprite = Sprite()
    sprite:Load("gfx/eid_inline_icons_serapher.anm2",true)
    EID:addIcon("TaintedHeart","hearts",0,9,9,-1,0,sprite)
    EID:addIcon("TaintedHeartHalf","hearts",1,9,9,-1,0,sprite)
end

CustomEnums = {
    HeartSubType = {
        HEART_TAINTED = 1,
        HEART_HALF_TAINTED = 2
    },

    CollectibleType = {
        COLLECTIBLE_UNSTABLE_FILE = Isaac.GetItemIdByName("Unstable File"),
        COLLECTIBLE_ANATOMY_TEXTBOOK = Isaac.GetItemIdByName("Anatomy Textbook"),
        COLLECTIBLE_PROFANE_ORB = Isaac.GetItemIdByName("Profane Orb"),
        COLLECTIBLE_MOTHERS_BLESSING = Isaac.GetItemIdByName("Mother's Blessing"),
        COLLECTIBLE_LUNCH_QUESTION = Isaac.GetItemIdByName("Lunch?"),
        COLLECTIBLE_DINNER_QUESTION = Isaac.GetItemIdByName("Dinner?"),
        COLLECTIBLE_DESSERT_QUESTION = Isaac.GetItemIdByName("Dessert?"),
        COLLECTIBLE_BREAKFAST_QUESTION = Isaac.GetItemIdByName("Breakfast?"),
        COLLECTIBLE_ROTTEN_MEAT_QUESTION = Isaac.GetItemIdByName("Rotten Meat?"),
        COLLECTIBLE_SNACK_QUESTION = Isaac.GetItemIdByName("A Snack?"),
        COLLECTIBLE_MIDNIGHT_SNACK_QUESTION = Isaac.GetItemIdByName("Midnight Snack?"),
        COLLECTIBLE_SUPPER_QUESTION = Isaac.GetItemIdByName("Supper?"),
        COLLECTIBLE_PANACEA = Isaac.GetItemIdByName("Panacea"),
        COLLECTIBLE_ENEMY_SPINDOWN = Isaac.GetItemIdByName("Fleshy Dice"),
        COLLECTIBLE_STYLE_METER = Isaac.GetItemIdByName("Cool Shades"),
        COLLECTIBLE_POOP_BABY = Isaac.GetItemIdByName("Poop Baby")
    },

    PickupVariant = {
        PICKUP_HEART = 420010
    },

    FamiliarVariant = {
        POOP_BABY = Isaac.GetEntityVariantByName("Poop Baby")
    }
}

include("scripts.item_Unstable-File")
include("scripts.item_Anatomy-Textbook")
include("scripts.item_Profane-Orb")
include("scripts.item_Maggot-Infestation")
include("scripts.item_Tainted-Heart-Food")
include("scripts.item_Panacea")
include("scripts.item_Enemy-Spindown")
include("scripts.item_Style-Meter")
include("scripts.item_Poop-Baby")

local RECOMMENDED_SHIFT_IDX = 35
function mod:PostGameStarted(_)
    globalRNG = RNG()
    globalRNG:SetSeed(Game():GetSeeds():GetStartSeed(),RECOMMENDED_SHIFT_IDX)
end

mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.PostGameStarted)
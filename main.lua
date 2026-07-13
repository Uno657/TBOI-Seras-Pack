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
CustomEnums = require("scripts.utility.enums.lua")

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
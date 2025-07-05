-- name: [CS] King Boo (Luigi's Mansion Series)
-- description: Write mod description here!\n\nMade by: You!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "King Boo (Luigi's Mansion Series)"

if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_KING_BOO_LM =      smlua_model_util_get_id("cs_king_boo_lm1_geo")      -- Located in "actors"
-- local E_MODEL_KING_BOO_LM_STAR = smlua_model_util_get_id("custom_model_star_geo") -- Located in "actors"

local TEX_KING_BOO_LM_LIFE_ICON = get_texture_info("KingBooIconLM") -- Located in "textures"
-- local TEX_CHAR_STAR_ICON = get_texture_info("exclamation-icon") -- Located in "textures"


local VOICETABLE_KING_BOO_LM = {
    [CHAR_SOUND_OKEY_DOKEY] =        'VictoryLaugh.ogg', -- Todo
	[CHAR_SOUND_LETS_A_GO] =         'DeathLaugh.ogg', -- Todo
	[CHAR_SOUND_PUNCH_YAH] =         'Laugh1.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] =         'LaughLong2.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] =         'LaughLong1.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] =       {'Laugh1.ogg', 'Laugh2.ogg', 'Laugh3.ogg'}, -- First Jump Sounds
	[CHAR_SOUND_HOOHOO] =            'Laugh2.ogg', -- Second jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'ThatOneSoundFromLM2FinalBossFight.ogg', 'DeathLaugh.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] =                'Fail1.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] =               'DeathLaugh.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] =             'LaughLong2.ogg',
	[CHAR_SOUND_HAHA] =              {'LaughLong2.ogg', 'DeathLaugh.ogg'}, -- Landing triple jump
	[CHAR_SOUND_YAHOO] =             'LaughLong1.ogg', -- Long jump
	[CHAR_SOUND_DOH] =               'Fail1.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] =              'LaughLong1.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] =              'Laugh2.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] =          'Lose.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] =      'DeathLaugh.ogg', -- Bouncing off of a flower spring
    [CHAR_SOUND_GROUND_POUND_WAH] =  'Laugh3.ogg', 
	[CHAR_SOUND_HRMM] =              'LaughLong1.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] =        {'VictoryLaugh.ogg', 'DeathLaugh'}, -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] =   'ThatOneSoundFromLM2FinalBossFight.ogg', -- Throwing Bowser
	[CHAR_SOUND_ATTACKED] = 'Fail2.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'Fail1.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'Fail1.ogg', -- Burned
	[CHAR_SOUND_IMA_TIRED] = 'Laugh2.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'Laugh3.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = nil, -- Snore Inhale
	[CHAR_SOUND_SNORING2] = nil, -- Exhale
	[CHAR_SOUND_SNORING3] = nil, -- Sleep talking / mumbling
	[CHAR_SOUND_COUGHING1] = nil, -- Cough take 1
	[CHAR_SOUND_COUGHING2] = nil, -- Cough take 2
	[CHAR_SOUND_COUGHING3] = nil, -- Cough take 3
	[CHAR_SOUND_DYING] = 'Lose.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'Lose.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'Lose2.ogg' -- Booted out of level
}

local CAPTABLE_KING_BOO_LM = {
    normal = smlua_model_util_get_id("cs_king_boo_lm_cap_normal_geo"),
    wing = smlua_model_util_get_id("cs_king_boo_lm_cap_wing_geo"),
    metal = smlua_model_util_get_id("cs_king_boo_lm_cap_metal_geo"),
    metalWing =  smlua_model_util_get_id("cs_king_boo_lm_cap_metal_wing_geo"),
}

local ANIM_KINGBOO_LM = {
    [CHAR_ANIM_IDLE_HEAD_CENTER] = 'KING_BOO_IDLE_PROPER',
    [CHAR_ANIM_IDLE_HEAD_LEFT]   = 'KING_BOO_IDLE_PROPER',
    [CHAR_ANIM_IDLE_HEAD_RIGHT]  = 'KING_BOO_IDLE_PROPER',
    [CHAR_ANIM_GENERAL_FALL]     = 'KING_BOO_LM_IDLE',
}

local PALETTE_CHAR_KING_BOO_LM1 = {
    [PANTS]  = "ffffff",
    [SHIRT]  = "ffffff",--Body
    [GLOVES] = "FF2834", --Eyes
    [SHOES]  = "ffffff", --Teeth
    [HAIR]   = "1670ba",-- Tongue
    [SKIN]   = "285161", --Mouth Blue
    [CAP]    = "FFF314", --Crown Yellow
	[EMBLEM] = "FF1000" --Gem
}


local HEALTH_METER_KING_BOO_LM1 = {
    label = {
        left = get_texture_info("KingBooHealthIconLeft"),
        right = get_texture_info("KingBooHealthIconRight"),
    },
    pie = {
        [1] = get_texture_info("KingBooMeter1"),
        [2] = get_texture_info("KingBooMeter2"),
        [3] = get_texture_info("KingBooMeter3"),
        [4] = get_texture_info("KingBooMeter4"),
        [5] = get_texture_info("KingBooMeter5"),
        [6] = get_texture_info("KingBooMeter6"),
        [7] = get_texture_info("KingBooMeter7"),
        [8] = get_texture_info("KingBooMeterFull"),
    }
}

local CSloaded = false
local function on_character_select_load()
    -- Adds the custom character to the Character Select Menu
    CT_KING_BOO_LM = _G.charSelect.character_add(
        "King Boo (LM)", -- Character Name
        "Description/Info", -- Description
        "ThePlayerRolo, Sounds Resource", -- Credits
        "ffffff",           -- Menu Color
        E_MODEL_KING_BOO_LM,       -- Character Model
        CT_TOAD,           -- Override Character
        TEX_KING_BOO_LM_LIFE_ICON, -- Life Icon
        1,                  -- Camera Scale
        10                   -- Vertical Offset
    )

    _G.charSelect.character_add_caps(E_MODEL_KING_BOO_LM, CAPTABLE_KING_BOO_LM)

    -- Adds a celebration star to your character
    -- (Models do not exist in template)
    --_G.charSelect.character_add_celebration_star(E_MODEL_KING_BOO_LM, E_MODEL_KING_BOO_LM_STAR, TEX_CHAR_STAR_ICON)

    _G.charSelect.character_add_palette_preset(E_MODEL_KING_BOO_LM, PALETTE_CHAR_KING_BOO_LM1)

    -- Adds a health meter to your character
    -- (Textures do not exist in template)
    _G.charSelect.character_add_health_meter(CT_KING_BOO_LM, HEALTH_METER_KING_BOO_LM1)
    _G.charSelect.character_add_animations(E_MODEL_KING_BOO_LM, ANIM_KINGBOO_LM);

    _G.charSelect.character_add_voice(E_MODEL_KING_BOO_LM, VOICETABLE_KING_BOO_LM)

    _G.charSelect.character_hook_moveset(CT_KING_BOO_LM, HOOK_MARIO_UPDATE, king_boo_update)


    _G.charSelect.credit_add(TEXT_MOD_NAME, "You", "Pack")

    CSloaded = true
end

_G.charSelect.config_character_sounds()

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)

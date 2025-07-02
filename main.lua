-- name: [CS] King Boo (Luigi's Mansion Series)
-- description: Write mod description here!\n\nMade by: You!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "King Boo (Luigi's Mansion Series)"

if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_KING_BOO_LM1 =      smlua_model_util_get_id("cs_king_boo_lm1_geo")      -- Located in "actors"
-- local E_MODEL_KING_BOO_LM1_STAR = smlua_model_util_get_id("custom_model_star_geo") -- Located in "actors"

local TEX_KING_BOO_LM1_LIFE_ICON = get_texture_info("exclamation-icon") -- Located in "textures"
-- local TEX_CHAR_STAR_ICON = get_texture_info("exclamation-icon") -- Located in "textures"

-- All sound files are located in "sound" folder
-- Remember to include the file extention in the name
local VOICETABLE_KING_BOO_LM = {
    [CHAR_SOUND_OKEY_DOKEY] =        'Laugh1.wav', -- Todo
	[CHAR_SOUND_LETS_A_GO] =         'Laugh1.wav', -- Todo
	[CHAR_SOUND_PUNCH_YAH] =         'Laugh1.wav', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] =         'LaughLong2.wav', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] =         'LaughLong1.wav', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] =       {'Laugh1.wav', 'Laugh2.wav', 'Laugh3.wav'}, -- First Jump Sounds
	[CHAR_SOUND_HOOHOO] =            'Laugh2.wav', -- Second jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'ThatOneSoundFromLM2FinalBossFight.wav', 'DeathLaugh.wav'}, -- Triple jump sounds
	[CHAR_SOUND_UH] =                'Fail1.wav', -- Wall bonk
	[CHAR_SOUND_UH2] =               'LaughLong2.wav', -- Landing after long jump
	[CHAR_SOUND_UH2_2] =             'LaughLong2.wav',
	[CHAR_SOUND_HAHA] =              'LaughLong2.wav', -- Landing triple jump
	[CHAR_SOUND_YAHOO] =             'LaughLong1.wav', -- Long jump
    --Beginning of Unfinished
	[CHAR_SOUND_DOH] =               'Laugh1.wav', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] =              'Laugh1.wav', -- Grabbing ledge
	[CHAR_SOUND_EEUH] =              'Laugh1.wav', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] =          'Laugh1.wav', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] =      'Laugh1.wav', -- Bouncing off of a flower spring
    [CHAR_SOUND_GROUND_POUND_WAH] =  'Laugh1.wav', 
	[CHAR_SOUND_HRMM] =              'Laugh1.wav', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] =        'Laugh1.wav', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] =   'Laugh1.wav', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'Laugh1.wav', -- Damaged
	[CHAR_SOUND_PANTING] = 'Laugh1.wav', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'Laugh1.wav', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'Laugh1.wav', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'Laugh1.wav', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'Laugh1.wav', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'Laugh1.wav', -- Exhale
    --End
	[CHAR_SOUND_SNORING3] = nil, -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = nil, -- Cough take 1
	[CHAR_SOUND_COUGHING2] = nil, -- Cough take 2
	[CHAR_SOUND_COUGHING3] = nil, -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'Lose.wav', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'Lose.wav', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'Lose2.wav' -- Booted out of level
}

-- All Located in "actors" folder
-- (Models do not exist in template)
--[[
local CAPTABLE_CHAR = {
    normal = smlua_model_util_get_id("FILENAME_geo"),
    wing = smlua_model_util_get_id("FILENAME_geo"),
    metal = smlua_model_util_get_id("FILENAME_geo"),
}
]]

local ANIM_KINGBOO_LM = {
    [CHAR_ANIM_IDLE_HEAD_CENTER] = 'KING_BOO_LM_IDLE',
    [CHAR_ANIM_IDLE_HEAD_LEFT]   = 'KING_BOO_LM_IDLE',
    [CHAR_ANIM_IDLE_HEAD_RIGHT]  = 'KING_BOO_LM_IDLE',
}
local PALETTE_CHAR_KING_BOO_LM1 = {
    [PANTS]  = "ffffff",
    [SHIRT]  = "ffffff",
    [GLOVES] = "ffffff",
    [SHOES]  = "ffffff",
    [HAIR]   = "ffffff",
    [SKIN]   = "ffffff",
    [CAP]    = "FFF314",
	[EMBLEM] = "FF1000"
}

-- All Located in "textures" folder
-- (Textures do not exist in template)
--[[
local HEALTH_METER_CHAR = {
    label = {
        left = get_texture_info("healthleft"),
        right = get_texture_info("healthright"),
    },
    pie = {
        [1] = get_texture_info("Pie1"),
        [2] = get_texture_info("Pie2"),
        [3] = get_texture_info("Pie3"),
        [4] = get_texture_info("Pie4"),
        [5] = get_texture_info("Pie5"),
        [6] = get_texture_info("Pie6"),
        [7] = get_texture_info("Pie7"),
        [8] = get_texture_info("Pie8"),
    }
}
]]

--[[
    Everything from here down where the data is applied

    Note that nothing here other than the 'character_add' function
    is required for a custom character, if you don't have the assets
    then feel free to remove the function from the functions below
]]

local CSloaded = false
local function on_character_select_load()
    -- Adds the custom character to the Character Select Menu
    CT_KING_BOO_LM = _G.charSelect.character_add(
        "King Boo (LM)", -- Character Name
        "Description/Info", -- Description
        "ThePlayerRolo, Sounds Resource", -- Credits
        "ffffff",           -- Menu Color
        E_MODEL_KING_BOO_LM1,       -- Character Model
        CT_TOAD,           -- Override Character
        TEX_KING_BOO_LM1_LIFE_ICON, -- Life Icon
        1,                  -- Camera Scale
        10                   -- Vertical Offset
    )

    -- Adds cap models to your character
    -- (Models do not exist in template)
    -- _G.charSelect.character_add_caps(E_MODEL_KING_BOO_LM1, CAPTABLE_CHAR)

    -- Adds a voice to your character
    -- (Sounds do not exist in template)
    _G.charSelect.character_add_voice(E_MODEL_KING_BOO_LM1, VOICETABLE_KING_BOO_LM)

    -- Adds a celebration star to your character
    -- (Models do not exist in template)
    --_G.charSelect.character_add_celebration_star(E_MODEL_KING_BOO_LM1, E_MODEL_KING_BOO_LM1_STAR, TEX_CHAR_STAR_ICON)

    -- Adds a palette to your character
    _G.charSelect.character_add_palette_preset(E_MODEL_KING_BOO_LM1, PALETTE_CHAR_KING_BOO_LM1)

    -- Adds a health meter to your character
    -- (Textures do not exist in template)
    -- _G.charSelect.character_add_health_meter(CT_KING_BOO_LM, HEALTH_METER_CHAR)
    _G.charSelect.character_add_animations(E_MODEL_KING_BOO_LM1, ANIM_KINGBOO_LM);
    -- Adds credits to the credits menu
    _G.charSelect.credit_add(TEXT_MOD_NAME, "You", "Pack")

    CSloaded = true
end

-- Character Voice hooks
-- You will likely not need to care about these
-- Will soon be overhauled





_G.charSelect.config_character_sounds()

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)

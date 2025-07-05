local function onhudrenderbehind() 
    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_print_text("FLOATS LEFT: " .. gPlayerSyncTable[0].CURRENT_FLOAT_AMOUNT, 250, 130, 1)
end

local function onhundrender()
    if (CT_KING_BOO_LM == _G.charSelect.character_get_current_number(gMarioStates[0].playerIndex))  then
       G.charSelect.character_render_health_meter(gMarioStates[0].playerIndex, 8, 300,-200,2,2);
    end
end
hook_event(HOOK_ON_HUD_RENDER_BEHIND, onhudrenderbehind);
hook_event(HOOK_ON_HUD_RENDER, onhundrender)
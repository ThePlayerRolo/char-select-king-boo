

local function onhundrender()
    if (CT_KING_BOO_LM == _G.charSelect.character_get_current_number(gMarioStates[0].playerIndex))  then
       _G.charSelect.character_render_health_meter(gMarioStates[0].playerIndex, 8, 300,-200,2,2);
    end
end
hook_event(HOOK_ON_HUD_RENDER, onhundrender)
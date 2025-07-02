local function before_update(m)
    if (CT_KING_BOO_LM == _G.charSelect.character_get_current_number(m.playerIndex)) then
        if (m.action == ACT_IDLE) then
            m.actionTimer = m.actionTimer + 1
            if (m.actionTimer > 900) then
                m.actionState = 3
            else
                m.actionState = 0
            end
        end
    end
end

hook_event(HOOK_BEFORE_MARIO_UPDATE, before_update)
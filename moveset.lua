if not _G.charSelectExists then return end   



function before_update(m)
    if _G.BooMovesetAPI.has_boo_flags(m, _G.BooMovesetAPI.gBooMovesetFlags.FLAG_EDIT_IDLE) then
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


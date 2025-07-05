if not _G.charSelectExists then return end   

ACT_KING_BOO_FLOAT = allocate_mario_action(ACT_FLAG_AIR | ACT_FLAG_ALLOW_VERTICAL_WIND_ACTION | ACT_FLAG_CONTROL_JUMP_HEIGHT | ACT_FLAG_ALLOW_FIRST_PERSON | ACT_FLAG_PAUSE_EXIT)

local FLOAT_AMOUT_CONSTANT = 5
gPlayerSyncTable[0].CURRENT_FLOAT_AMOUNT = FLOAT_AMOUT_CONSTANT;
gPlayerSyncTable[0].FLOAT_TIMER = 5;

function act_king_boo_float(m)
    m.intendedMag = m.intendedMag / 2
    common_air_action_step(m, ACT_FREEFALL_LAND, CHAR_ANIM_IDLE_HEAD_CENTER, AIR_STEP_CHECK_LEDGE_GRAB);
    m.intendedMag = m.intendedMag * 2
    m.vel.y = 0;
    m.vel.y = m.vel.y + 20;
    if gPlayerSyncTable[0].FLOAT_TIMER == 10 then
        set_mario_action(m, ACT_FREEFALL, 0);
    end

    gPlayerSyncTable[0].FLOAT_TIMER = gPlayerSyncTable[0].FLOAT_TIMER + 1;
    return false;
end

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


function king_boo_update(m)
    if m.action & ACT_FLAG_AIR ~= 0 and m.controller.buttonPressed & A_BUTTON ~= 0 and m.vel.y < 0 and gPlayerSyncTable[0].CURRENT_FLOAT_AMOUNT > 0 then
        gPlayerSyncTable[0].CURRENT_FLOAT_AMOUNT = gPlayerSyncTable[0].CURRENT_FLOAT_AMOUNT - 1;
        gPlayerSyncTable[0].FLOAT_TIMER = 0;
        set_mario_action(m, ACT_KING_BOO_FLOAT, 0)
    end
    if m.pos.y <= m.floorHeight then
    gPlayerSyncTable[0].CURRENT_FLOAT_AMOUNT = FLOAT_AMOUT_CONSTANT
    end
end

hook_mario_action(ACT_KING_BOO_FLOAT, act_king_boo_float)
hook_event(HOOK_BEFORE_MARIO_UPDATE, before_update)
--[[
you could be: inside a wall hitbox, above a ceiling or out-of-bounds
the first thing I could think of is to run perform_air_step() once at the end of the action, then check for AIR_STEP_HIT_WALL (for wall hitbox and ceiling cases) or check if there is a floor below Mario (out-of-bounds)
if it's one of the 3 cases, restore the position that you stored before the action and set the current action to ACT_FREEFALL or something (to prevent bonking or dying)]]
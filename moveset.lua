if not _G.charSelectExists then return end   




--[[
you could be: inside a wall hitbox, above a ceiling or out-of-bounds
the first thing I could think of is to run perform_air_step() once at the end of the action, then check for AIR_STEP_HIT_WALL (for wall hitbox and ceiling cases) or check if there is a floor below Mario (out-of-bounds)
if it's one of the 3 cases, restore the position that you stored before the action and set the current action to ACT_FREEFALL or something (to prevent bonking or dying)]]
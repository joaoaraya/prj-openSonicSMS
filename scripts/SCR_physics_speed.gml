// Actions
if (releasedLeft == true)
{
    hspeed += 0.12;
    if (hspeed >= 0) 
    {
        hspeed = 0;
        playerImaStop = 0;
        okStop = true;
        releasedLeft = false;
    }
}

if (releasedRight == true)
{
    hspeed -= 0.12;
    if (hspeed <= 0) 
    {
        hspeed = 0;
        playerImaStop = 0;
        okStop = true;
        releasedRight = false;
    }
}


// ---- Walk and Run ----

// Sprites (Speed)
if (hspeed > 0 && hspeed > 7 || hspeed < 0 && hspeed < -7) 
{
    speed_spr = 0.8;
}
if (hspeed > 0 && hspeed < 8 || hspeed < 0 && hspeed > -8) 
{
    speed_spr = 0.7;
}
if (hspeed > 0 && hspeed < 7 || hspeed < 0 && hspeed > -7) 
{
    speed_spr = 0.6;
}
if (hspeed > 0 && hspeed < 6 || hspeed < 0 && hspeed > -6) 
{
    speed_spr = 0.5;
}
if (hspeed > 0 && hspeed < 5 || hspeed < 0 && hspeed > -5) 
{
    speed_spr = 0.4;
}
if (hspeed > 0 && hspeed < 4 || hspeed < 0 && hspeed > -4) 
{
    speed_spr = 0.35;
}

// Sprites (Frames)
if (global.playerJump == false && !place_meeting(x+hspeed, y, OBJ_collision_wall))
{
    // Walk
    if (hspeed > 0 && hspeed < 7 || hspeed < 0 && hspeed > -7)
    {
        sprite_index = SPR_player_walk;
        image_speed = speed_spr;
    }
    // Run
    if (hspeed > 6 || hspeed < -6)
    {
        sprite_index = SPR_player_run;
        image_speed = speed_spr;
    }
}

// ---- Spin jump ----

if (global.playerJump == true && global.playerJumpSpring == false)
{
    sprite_index = SPR_player_spin;
    image_speed = 0.65;
}

// ---- Spring Jump ----

if (global.playerJump == true && global.playerJumpSpring == true)
{
    // Jump
    if (vspeed < 0)
    {
        sprite_index = SPR_player_jump;
        image_speed = 0.4;
    }
    // Falling Down
    if (vspeed > 0)
    {
        sprite_index = SPR_player_walk;
        image_speed = 0.4;
    }
}

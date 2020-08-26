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
if (global.playerJump == false && global.playerSpinDash == false //Not jumping
    && !place_meeting(x+hspeed, y, OBJ_collision_wall) //Not wall
    && !place_meeting(x+hspeed, y, OBJ_monitors) //Not monitors
    && !(x-9+hspeed < view_xview[0] || x+6+hspeed > view_xview[0]+view_wview[0]) //Not view margin
    && !(x+9+hspeed <= 9 || x+hspeed >= room_width-9)) //Not room margin
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

if (global.playerJump == true && global.playerJumpSpring == false && 
    global.playerFly == false)
{
    sprite_index = SPR_player_spin;
    image_speed = 0.65;
}


// ---- Spring Jump ----

if (global.playerJump == true && global.playerJumpSpring == true &&
    global.playerFly == false)
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


// ---- Tails Fly ----
if (global.playerJump == true && global.playerJumpSpring == false &&
    global.playerFly == true && global.player == 2)
{
    sprite_index = SPR_player_fly;
    image_speed = 0.65;
}

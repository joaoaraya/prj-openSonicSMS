
// Underwater
if (global.playerWater == true)
{
    global.valGravity = 0.2; // Gravity
    global.valSpeed = 0.012; // Speed you add when you walk
    global.valSpeedMax = 2; // Speed limit
    global.valJumpMax = 6; // Jump pressure
    global.valJump = 6; // Drop limit
    
    if (hspeed < -global.valSpeedMax) 
    {
        hspeed = -global.valSpeedMax;
    }
    if (hspeed > global.valSpeedMax) 
    {
        hspeed = global.valSpeedMax;
    }
}

// Out of water
if (global.playerWater == false && global.superSonic == false)
{
    global.valGravity = 0.8; // Gravity     
    global.valSpeed = 0.12; // Speed you add when you walk
    global.valSpeedMax = 8; // Speed limit
    global.valJumpMax = 12; // Jump pressure
    global.valVspeed = 18; // Drop limit
}

// Out of water with Super Sonic
if (global.playerWater == false && global.superSonic == true)
{
    global.valGravity = 0.8; // Gravity
    global.valSpeed = 0.12; // Speed you add when you walk
    global.valSpeedMax = 10; // Speed limit
    global.valJumpMax = 12.5; // Jump pressure
    global.valVspeed = 18; // Drop limit
}

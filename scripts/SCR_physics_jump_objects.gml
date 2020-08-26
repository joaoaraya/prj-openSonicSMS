if (global.playerFly == true) exit;

SCR_physics();
global.playerJumpSpring = false;

// Jump
if (vspeed > 0 && vspeed < global.valJumpMax || 
    vspeed < 0 && vspeed > -global.valJumpMax)
{
    vspeed = -abs(vspeed)*1.1;
}

// Jump limit
if (vspeed > global.valJumpMax || vspeed < -global.valJumpMax) 
{
    vspeed = -global.valJumpMax*1.1;
}

/// Destroy badnik with...

// Jump
if (place_meeting(x,y-1,OBJ_player_sonic) && global.playerJump == true)
{
    instance_destroy();
}

// Spin Dash
if (place_meeting(x,y,OBJ_player_sonic) && global.playerSpinDash == true)
{
    instance_destroy();
}

// Spin Attack
if (place_meeting(x,y-1,OBJ_player_sonic_spin))
{
    instance_destroy();
}

// Super Sonic
if (place_meeting(x,y-1,OBJ_player_sonic) && global.superSonic == true)
{
    instance_destroy();
}

// Invincibility
if (place_meeting(x,y-1,OBJ_player_sonic) && global.powerInv == true)
{
    instance_destroy();
}

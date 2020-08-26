/// Destroy badnik with...

// Jump
if (place_meeting(x,y-1,OBJ_player_char) && global.playerJump == true)
{
    instance_destroy();
}

// Spin Dash
if (place_meeting(x,y,OBJ_player_char) && global.playerSpinDash == true)
{
    instance_destroy();
}

// Spin Attack
if (place_meeting(x,y-1,OBJ_player_char_spin))
{
    instance_destroy();
}

// Super 
if (place_meeting(x,y-1,OBJ_player_char) && global.playerSuper == true)
{
    instance_destroy();
}

// Invincibility
if (place_meeting(x,y-1,OBJ_player_char) && global.powerInv == true)
{
    instance_destroy();
}

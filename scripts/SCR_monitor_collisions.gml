/// Collision with...

// Player Jump
if (global.playerJump == true || global.playerSpinDash == true &&
    instance_exists(OBJ_player_char) && destroy == true)
{
    instance_destroy();
    solid = false;
}

// Player Spin Attack or Flame Shield
else if (instance_exists(OBJ_player_char_spin) || instance_exists(OBJ_power_shield_flame_jump))
{
    instance_destroy();
    solid = false;
}

// Player Walk / Run
else
{
    solid = true;
}



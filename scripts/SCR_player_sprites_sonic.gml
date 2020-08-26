/// Sonic Sprites

// Super
if (global.playerSuper == true)
{
    SPR_player_stop = SPR_sonic_super_stop;
    SPR_player_wait = SPR_sonic_super_wait;
    SPR_player_up = SPR_sonic_super_up;
    SPR_player_down = SPR_sonic_super_down;
    SPR_player_walk = SPR_sonic_super_walk;
    SPR_player_run = SPR_sonic_super_run;
    SPR_player_break = SPR_sonic_super_break;
    SPR_player_spin = SPR_sonic_super_spin;
    SPR_player_spin_dash = SPR_sonic_super_spin_dash;
    SPR_player_jump = SPR_sonic_super_jump;
    SPR_player_falling = SPR_sonic_super_falling;
    SPR_player_fly = SPR_sonic_super_spin; // Sonic don't fly
}

// Normal
else
{
    SPR_player_stop = SPR_sonic_stop;
    SPR_player_wait = SPR_sonic_wait;
    SPR_player_up = SPR_sonic_up;
    SPR_player_down = SPR_sonic_down;
    SPR_player_walk = SPR_sonic_walk;
    SPR_player_run = SPR_sonic_run;
    SPR_player_break = SPR_sonic_break;
    SPR_player_spin = SPR_sonic_spin;
    SPR_player_spin_dash = SPR_sonic_spin_dash;
    SPR_player_jump = SPR_sonic_jump;
    SPR_player_falling = SPR_sonic_falling;
    SPR_player_fly = SPR_sonic_spin; // Sonic don't fly
}

// All
SPR_player_super_transform = SPR_sonic_super_transform;
SPR_player_death = SPR_sonic_death;
SPR_player_water_death = SPR_sonic_water_death;
SPR_player_water_air = SPR_sonic_water_air;


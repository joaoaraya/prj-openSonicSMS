/// tails Sprites

// Super
if (global.playerSuper == true)
{
    SPR_player_stop = SPR_tails_super_stop;
    SPR_player_wait = SPR_tails_super_wait;
    SPR_player_up = SPR_tails_super_up;
    SPR_player_down = SPR_tails_super_down;
    SPR_player_walk = SPR_tails_super_walk;
    SPR_player_run = SPR_tails_super_run;
    SPR_player_break = SPR_tails_super_break;
    SPR_player_spin = SPR_tails_super_spin;
    SPR_player_spin_dash = SPR_tails_super_spin_dash;
    SPR_player_jump = SPR_tails_super_jump;
    SPR_player_falling = SPR_tails_super_falling;
    SPR_player_fly = SPR_tails_super_fly;
}

// Normal
else
{
    SPR_player_stop = SPR_tails_stop;
    SPR_player_wait = SPR_tails_wait;
    SPR_player_up = SPR_tails_up;
    SPR_player_down = SPR_tails_down;
    SPR_player_walk = SPR_tails_walk;
    SPR_player_run = SPR_tails_run;
    SPR_player_break = SPR_tails_break;
    SPR_player_spin = SPR_tails_spin;
    SPR_player_spin_dash = SPR_tails_spin_dash;
    SPR_player_jump = SPR_tails_jump;
    SPR_player_falling = SPR_tails_falling;
    
    // Swim of fly?
    if (global.playerWater == true)
    {
        SPR_player_fly = SPR_tails_water_swim;
    }
    else
    {
        SPR_player_fly = SPR_tails_fly;
    }
}

// All
SPR_player_super_transform = SPR_tails_super_transform;
SPR_player_death = SPR_tails_death;
SPR_player_water_death = SPR_tails_death;
SPR_player_water_air = SPR_tails_water_air;


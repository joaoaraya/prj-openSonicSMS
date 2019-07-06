if (playerBreakL == true)
{
    // Sprite
    sprite_index = SPR_player_break;
    image_speed = 0.4;
    
    // SFX
    if (global.music == 1 && okBreak == true) 
    {
        if (audio_is_playing(SFX_sonic_break))
        {
            audio_stop_sound(SFX_sonic_break);
        }
        audio_play_sound(SFX_sonic_break,10,false);
        okBreak = false;
    }
    
    // Action
    hspeed -= hspeed/4;
    if (hspeed <= 0) 
    {
        hspeed = 0;
        okBreak = true;
        image_xscale = -1;
        playerBreakL = false;
    }
}

if (playerBreakR == true)
{
    // Sprite
    sprite_index = SPR_player_break;
    image_speed = 0.4;
    
    // SFX
    if (global.music == 1 && okBreak == true) 
    {
        if (audio_is_playing(SFX_sonic_break)) 
        {
            audio_stop_sound(SFX_sonic_break);
        }
        audio_play_sound(SFX_sonic_break,10,false);
        okBreak = false;
    }
    
    // Action
    hspeed += -hspeed/4;
    if (hspeed >= 0) 
    {
        hspeed = 0;
        okBreak = true;
        image_xscale = 1;
        playerBreakR = false;
    }
}

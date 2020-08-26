if (upward == true)
{
    // --- Jump Control ---
    
    // Spring out of water
    if (global.playerWater == false) 
    {
        global.jumpSpringMax = jump;
    }
    // Spring Underwater
    if (global.playerWater == true)
    {
        global.jumpSpringMax = jump/2;
    }
    
    // --- Jump on Player ---
    
    with(OBJ_player_char)
    {
        // Variables
        if (global.playerFly == true) exit;
        global.playerJump = true;
        global.playerJumpSpring = true;
        vspeed = global.jumpSpringMax;
        
        // Sprite
        sprite_index = SPR_player_jump;
        image_speed = 0.4;
    }
    
    with(OBJ_player_char_spin)
    {
        // Variables
        global.playerJump = true;
        global.playerJumpSpring = true;
        vspeed = global.jumpSpringMax;
        
        // Sprite
        sprite_index = SPR_player_jump;
        image_speed = 0.4;
        
        // Change for normal form
        instance_change(OBJ_player_char, false);
    }
    
    // SFX
    if (global.music == 1)
    {
        if (audio_is_playing(SFX_sonic_spring))
        {
            audio_stop_sound(SFX_sonic_spring);
        }
        audio_play_sound(SFX_sonic_spring, 10, false);
    }
}

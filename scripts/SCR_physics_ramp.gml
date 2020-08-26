if (global.playerJump == false)
{
    yRamp = 3;
    up = 0;
    down = 0;
    
    // Climbing the ramp
    if (place_free(x, y-1))
    {
        y -= 1;
    }
    else if (place_free(x, y-2)) 
    {
        y -= 2;
    } 
    else if (place_free(x, y-3)) 
    {
        y -= 3;
    }
    else if (place_free(x, y-4)) 
    {
        y -= 4;
    }
    else if (place_free(x, y-5)) 
    {
        y -= 5;
    }
    else if (place_free(x, y-6)) 
    {
        y -= 6;
    }
    else if (place_free(x, y-7)) 
    {
        y -= 7;
    }
    else if (place_free(x, y-8))
    {
        y -= 8;
    }
    else if (place_free(x, y-9)) 
    {
        y -= 9;
    }
    else if (place_free(x, y-10)) 
    {
        y -= 10;
    }
    else if (place_free(x, y-11))
    {
        y -= 11;
    }
    else if (place_free(x, y-12))
    {
        y -= 12;
    }
    else if (place_free(x, y-13)) 
    {
        y -= 13;
    }
    else if (place_free(x, y-14))
    {
        y -= 14;
    }
    else if (place_free(x, y-15)) 
    {
        y -= 15;
    }
    else if (place_free(x, y-16)) 
    {
        y -= 16;
    }
    else if (place_free(x, y-17))
    {
        y -= 17;
    }
    else if (place_free(x, y-18)) 
    {
        y -= 18;
    }
    else if (place_free(x, y-19)) 
    {
        y -= 19;
    }
    else if (place_free(x, y-20)) 
    {
        y -= 20;
    }
    
    // Going down the ramp
    if (place_free(x, y+1)) && !(place_free(x, y+2)) 
    {
        y += 1;
    }
    if (place_free(x, y+2)) && !(place_free(x, y+3)) 
    {
        y += 2;
    }
    repeat(14)
    {
        if (place_free(x, y+yRamp)) && !(place_free(x, y+yRamp+1))
        {
            y += yRamp;
            if (hspeed > 5) 
            {
                hspeed += down;
            }
            if (hspeed < -5) 
            {
                hspeed += -down;
            }
        }
        yRamp += 1;
    }
    // Default
    yRamp = 3;
}

if (playerBreakL == true)
{
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
    hspeed += -hspeed/4;
    if (hspeed >= 0) 
    {
        hspeed = 0;
        okBreak = true;
        image_xscale = 1;
        playerBreakR = false;
    }
}

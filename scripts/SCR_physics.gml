
// -------------------  Normal Physics Values  -----------------------

if (global.playerWater == false)
{   
    // ---------------------- GRAVITY --------------------------
    
    // Fly
    if (global.playerFly == true)
    {
        switch(global.player) 
        {
            case 2: global.valGravity = 0.08; break; // Tails
            case 3: global.valGravity = 0.02; break; // Knuckles
        }
    }
    // Normal
    else 
    {
        global.valGravity = 0.8;
    }
    global.valVspeed = 18; // Drop limit
    
    // ------------------ JUMP + SPEED ----------------------
    
    // Normal
    if (global.playerSuper == false)
    {    
        global.valJumpMax = 12; // Jump pressure
        global.valSpeed = 0.12; // Speed to add in the walk
        global.valSpeedMax = 8; // Speed limit
    }
    // Super
    if (global.playerSuper == true)
    {
        global.valJumpMax = 12.5; // Jump pressure
        global.valSpeed = 0.12; // Speed to add in the walk
        global.valSpeedMax = 10; // Speed limit
    }
}



// --------------------  Water Physics Values -------------------------

if (global.playerWater == true)
{
    // ---------------- GRAVITY + JUMP (River) --------------------
    
    if (global.playerSprite == 0)
    {
        // Fly
        if (global.playerFly == true)
        {
            switch(global.player) 
            {
                case 2: global.valGravity = 0.08; break; // Tails
                case 3: global.valGravity = 0.02; break; // Knuckles
            }
        }
        // Normal
        else
        {
            global.valGravity = 0.8;
        }
        global.valVspeed = 6; // Drop limit
        global.valJumpMax = 12; // Jump pressure
    }

    // ----------------- GRAVITY + JUMP (Underwater) ---------------------
    
    if (global.playerSprite == 1)
    {
        // Fly
        if (global.playerFly == true)
        {
            switch(global.player) 
            {
                case 2: global.valGravity = 0.2; break; // Tails
                case 3: global.valGravity = 0.02; break; // Knuckles
            }
        }
        // Normal
        else
        {
            global.valGravity = 0.2;
        }
        global.valVspeed = 6; // Drop limit
        global.valJumpMax = 6; // Jump pressure
    }
    
    // ------------------------- SPEED -----------------------------
    
    // Normal
    if (global.playerSuper == false)
    {    
        global.valSpeed = 0.016; // Speed to add in the walk
        global.valSpeedMax = 3; // Speed limit
    }
    // Super
    if (global.playerSuper == true)
    {
        global.valSpeed = 0.032; // Speed to add in the walk
        global.valSpeedMax = 4; // Speed limit
    }
    
    // Don't run (only walk)
    if (hspeed < -global.valSpeedMax) 
    {
        hspeed = -global.valSpeedMax;
    }
    if (hspeed > global.valSpeedMax) 
    {
        hspeed = global.valSpeedMax;
    }
}



// ------ Auto Adjustment ------

if (global.screenSize == 0)
{
    // --- Set variables ---
    
    // Screen Size Default
    var screenWidthDef = 348;
    var screenHeightDef = 196;
    
    // Self adjustment calculation
    var aspectWidth = display_get_width() / display_get_height();
    var aspectHeight = display_get_height() / display_get_width();
    
    // Adjusted screen size
    var screenWidth = 0; 
    var screenHeight = 0;


    // --- Scren calculation ---
    
    // Screen higher than default
    if (aspectHeight > 0.5625) 
    {
        screenWidth = screenWidthDef;
        screenHeight = round(screenWidthDef * aspectHeight);
    }
    
    // Default size
    if (aspectHeight <= 0.5625) 
    {
        screenWidth = screenWidthDef;
        screenHeight = round(screenWidthDef * aspectHeight);
    }
    
    // Screen wider than the default
    if (aspectWidth > 1.777777777777778) 
    {
        screenWidth = round(screenHeightDef * aspectWidth);
        screenHeight = screenHeightDef;
    }
    
    
    // --- Aspect correction for (Even height + Even width) ---
    
    if !(screenWidth % 2 == 0)
    {
        screenWidth++;
    }
    if !(screenHeight % 2 == 0)
    {
        screenHeight++;
    }
}


// ------ Widescreen (16:9) ------

if (global.screenSize == 1)
{
    // Screen Size
    var screenWidth = 348;
    var screenHeight = 196;
}


// ------ Retro (4:3) ------

if (global.screenSize == 2)
{
    // Screen Size
    var screenWidth = 290;
    var screenHeight = 218;
}



// ------ Set screen settings ------
  
window_set_size (screenWidth*global.windowSize, screenHeight*global.windowSize);
surface_resize (application_surface, screenWidth*global.windowSize, screenHeight*global.windowSize);
view_wview[view_current] = screenWidth;
view_hview[view_current] = screenHeight;
view_wport[view_current] = screenWidth*global.windowSize;
view_hport[view_current] = screenHeight*global.windowSize;


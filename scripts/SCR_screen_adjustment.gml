// --- Variables ---

// Screen Size Default
var screenWidth = 348;
var screenHeight = 196;

// Self adjustment calculation
var aspectWidth = display_get_width() / display_get_height();
var aspectHeight = display_get_height() / display_get_width();


// --- Auto adjustment ---

// Original Size
if (aspectHeight <= 0.5625)
{
    window_set_size (screenWidth, round(screenWidth * aspectHeight));
    surface_resize (application_surface, screenWidth, round(screenWidth * aspectHeight));
    view_wview[view_current] = screenWidth;
    view_hview[view_current] = round(screenWidth * aspectHeight);
    view_wport[view_current] = screenWidth;
    view_hport[view_current] = round(screenWidth * aspectHeight);
}

// Screen wider than the default (Width)
if (aspectWidth > 1.777777777777778)
{
    window_set_size (round(screenHeight * aspectWidth), screenHeight);
    surface_resize (application_surface, round(screenHeight * aspectWidth), screenHeight);
    view_wview[view_current] = round(screenHeight * aspectWidth);
    view_hview[view_current] = screenHeight;
    view_wport[view_current] = round(screenHeight * aspectWidth);
    view_hport[view_current] = screenHeight;
}

// Screen higher than default (Height)
if (aspectHeight > 0.5625)
{
    window_set_size (screenWidth, round(screenWidth * aspectHeight));
    surface_resize (application_surface, screenWidth, round(screenWidth * aspectHeight));
    view_wview[view_current] = screenWidth;
    view_hview[view_current] = round(screenWidth * aspectHeight);
    view_wport[view_current] = screenWidth;
    view_hport[view_current] = round(screenWidth * aspectHeight);
}

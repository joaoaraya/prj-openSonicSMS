/// Load data icons and zones names

if (global.allZones == false || instance_exists(OBJ_pause))
{
    switch(global.zoneGoto)
    {
        case 1: loadIcon = 0; loadZone = "Green Hill 1"; break; 
        case 2: loadIcon = 1; loadZone = "Green Hill 2"; break;
        default: loadIcon = 0; loadZone = "zone"; break;
    }
}
else // Clear all game
{
    loadIcon = 2; //Super Sonic
    loadZone = "clear"; //clear game
}

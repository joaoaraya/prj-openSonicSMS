switch (global.zoneGoto)
{
    case 1: room_goto(ROM_zone_1); break;
    case 2: room_goto(ROM_zone_2); break;
    
    default: game_restart(); break; // Error
}

// Open Archive
ini_open ("saveGame" + string(global.saveGame) + ".ini");

// Load Varibles
ini_write_real ("classicMode", "life", global.life);
ini_write_real ("classicMode", "chaoEmerald", global.chaoEmerald);
ini_write_real ("classicMode", "score", score);
ini_write_real ("classicMode", "zoneGoto", global.zoneGoto);
ini_write_real ("classicMode", "specialStageGoto", global.specialStageGoto);
ini_write_real ("classicMode", "allZones", global.allZones);

// Close Archive
ini_close ();

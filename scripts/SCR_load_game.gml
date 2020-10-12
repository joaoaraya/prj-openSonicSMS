// Open Archive
ini_open ("saveGame" + string(global.saveGame) + ".ini");

// Load Varibles
global.life = ini_read_real ("classicMode", "life", global.life);
global.chaoEmerald = ini_read_real ("classicMode", "chaoEmerald", global.chaoEmerald);
score = ini_read_real ("classicMode", "score", score);
global.zoneGoto = ini_read_real ("classicMode", "zoneGoto", global.zoneGoto);
global.specialStageGoto = ini_read_real ("classicMode", "specialStageGoto", global.specialStageGoto);
global.allZones = ini_read_real ("classicMode", "allZones", global.allZones);

// Close Archive
ini_close ();

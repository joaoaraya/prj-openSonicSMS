/// Keyboard + Gamepads

// Hold
global.btLeft = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl);
global.btRight = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr);
global.btUp = keyboard_check(vk_up) || gamepad_button_check(0, gp_padu);
global.btDown = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd);
global.btSpace = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
global.btA = keyboard_check(ord('A')) || gamepad_button_check(0, gp_face2);
global.btStart = keyboard_check(vk_enter) || gamepad_button_check(0, gp_start);

// Press
global.btLeftPress = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl);
global.btRightPress = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr);
global.btUpPress = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
global.btDownPress = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd);
global.btSpacePress = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
global.btAPress = keyboard_check_pressed(ord('A')) || gamepad_button_check_pressed(0, gp_face2);
global.btStartPress = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start);

/// Release
global.btLeftRel = keyboard_check_released(vk_left) || gamepad_button_check_released(0, gp_padl);
global.btRightRel = keyboard_check_released(vk_right) || gamepad_button_check_released(0, gp_padr);
global.btUpRel = keyboard_check_released(vk_up) || gamepad_button_check_released(0, gp_padu);
global.btDownRel = keyboard_check_released(vk_down) || gamepad_button_check_released(0, gp_padd);
global.btSpaceRel = keyboard_check_released(vk_space) || gamepad_button_check_released(0, gp_face1);
global.btARel = keyboard_check_released(ord('A')) || gamepad_button_check_released(0, gp_face2);
global.btStartRel= keyboard_check_released(vk_enter) || gamepad_button_check_released(0, gp_start);

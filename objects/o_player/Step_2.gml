/// @description Update the player

// Horizontal player movement
var h_move = sign(keyboard_check(ord("D")) - keyboard_check(ord("A")));
if (h_move != 0) {
	phy_position_x += spd * h_move;
	img_xscale = img_xscale_invert * h_move;
	image_speed = img_speed;
} else {
	// Reset image values to
	// make the player stand still
	image_index = 0;	
	image_speed = 0;
}

// Clamp the players position, so he can't move out of room boundaries
var clamp_pos_x = clamp(phy_position_x, 0, room_width);
var clamp_pos_y = clamp(phy_position_y, 0, room_height);

phy_position_x = clamp_pos_x;
phy_position_y = clamp_pos_y;

if (keyboard_check_pressed(vk_space)) {
	global.y_gravity = -global.y_gravity;
	physics_world_gravity(global.x_gravity, global.y_gravity);
	phy_rotation = phy_rotation + 180;
	img_xscale_invert = -img_xscale_invert;
}
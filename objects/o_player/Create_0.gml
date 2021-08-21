/// @description Initialize the player

event_inherited();

spd = 3;
img_xscale = 1;
img_xscale_invert = -1;
img_speed = .5;

if (!instance_exists(o_camera)) {
	var cam = instance_create_layer(x, y, "General", o_camera);
	cam.target = o_player;
}

if (!instance_exists(o_player_stats)) then instance_create_layer(x, y, "General", o_player_stats);
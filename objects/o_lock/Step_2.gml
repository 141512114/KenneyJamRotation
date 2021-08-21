/// @description Update the lock

if (instance_exists(o_player_stats)) {
	if (keys_required <= o_player_stats.key) {
		instance_create_layer(x, y, "Instances", o_goal);
		instance_destroy();
	}
}
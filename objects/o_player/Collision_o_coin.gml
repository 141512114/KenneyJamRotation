/// @description Add a coin on collision
if (instance_exists(o_player_stats)) {
	o_player_stats.coins += 1;
}

instance_destroy(other);
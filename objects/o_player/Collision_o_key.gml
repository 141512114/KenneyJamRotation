/// @description Add a key on collision
if (instance_exists(o_player_stats)) {
	o_player_stats.key += 1;
}

instance_destroy(other);
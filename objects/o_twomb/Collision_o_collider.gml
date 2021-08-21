/// @description Collide

if (state = "watching" && collision_detected) {
	state = "waiting";
	alarm_set(0, 30);
}
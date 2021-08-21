/// @description Initialize twomb

event_inherited();

// Set up variables
collision_detected = false;
collision_time = 0;

fall_spd = 8;
rise_spd = .75;

initial_y = y;
state = "watching";
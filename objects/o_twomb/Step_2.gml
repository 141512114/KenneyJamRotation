/// @description Update the twomb

switch (state) {
	case "watching":
		// Check if the player is beneath or in range
		if (!collision_detected && collision_rectangle(x-65, y, x+65, y+150, o_player, 0, 1)) {
			collision_time = current_time;
			image_index = 1;
			collision_detected = true;
		}
	
		// Start falling down, if it hits the ground it returns to its initial y position
		if (collision_detected) {
			var time_passed = current_time - collision_time;
			phy_position_y += clamp(time_passed/100, 0, fall_spd);
			
			if (place_meeting(x, y+9, o_collider)) {
				state = "waiting";
				alarm_set(0, 30);	
			}
		}
		break;
		
	case "returning":
		// Return to initial y position
		if (y > initial_y) {
			phy_position_y -= rise_spd;
		} else {
			state = "watching";
		}
		break;
		
	case "waiting":
	default:
		break;
}
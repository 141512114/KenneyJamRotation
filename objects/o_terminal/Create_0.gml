global.x_gravity = 0;
global.y_gravity = 10;

if (room != AMainMenu && room != LevelCredits) {
	physics_world_gravity(global.x_gravity, global.y_gravity);	
}
/// @description Update the camera

// Make the camera follow its target
// and add a little bounce to it, so it doesn't
// feel to rigid
x += (x_to - x) / camera_bounce;
y += (y_to - y) / camera_bounce;

camera_set_view_pos(camera, -(camera_width/2)+x, -(camera_height/2)+y);

if (instance_exists(target)){
	x_to = target.x;
	y_to = target.y;
}

// Clamp the cameras position, so it won't leave the room boundaries
var max_w = (room_width - camera_width), max_h = (room_height - camera_height);
var val_x = camera_get_view_x(camera), val_y = camera_get_view_y(camera);

camera_set_view_pos(camera, clamp(val_x, 0, max_w), clamp(val_y, 0, max_h));
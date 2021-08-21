/// @description Initialize the camera

// Create the camera
camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);

viewport_width = view_get_wport(view_camera[0]);
viewport_height = view_get_hport(view_camera[0]);

camera = camera_create_view(0, 0, camera_width, camera_height, 0, -1, -1, -1, 32, 32);
view_set_camera(0, camera);	

// Set up important variables
target = noone;
x_to = x;
y_to = y;

camera_bounce = 10;

// Disable automatically drawing the application surface
application_surface_draw_enable(false);
surface_resize(application_surface, viewport_width, viewport_height);

window_width = window_get_width();
window_height = window_get_height();

x_offset = (window_width - surface_get_width(application_surface))/2;
y_offset = (window_height - surface_get_height(application_surface))/2;
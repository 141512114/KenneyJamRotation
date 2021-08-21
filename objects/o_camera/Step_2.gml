/// @description Check for window resizing and adjust the application surface

if (window_width != window_get_width() || window_height != window_get_height()) {
	window_width = window_get_width();
	window_height = window_get_height();

	x_offset = (window_width - surface_get_width(application_surface))/2;
	y_offset = (window_height - surface_get_height(application_surface))/2;	
}
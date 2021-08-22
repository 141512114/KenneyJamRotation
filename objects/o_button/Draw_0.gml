/// @description Draw text

var center_of_button_x = (sprite_get_width(sprite_index)*image_xscale)/2;
var y_off = 1;

draw_set_font(f_default);
draw_set_halign(fa_center);
switch (current_type) {
	case btype.start:
		draw_text(x+center_of_button_x, y+y_off, "Start");
		break;
		
	case btype.volume:
		draw_text(x+center_of_button_x, y+y_off, "Volume");
		break;
		
	case btype.credit:
		draw_set_halign(fa_left);
		draw_text(x+5, y+y_off, "Made by Nolan");
		draw_set_halign(fa_center);
		break;
		
	case btype.play_again:
		draw_text(x+center_of_button_x, y+y_off, "Play again");
		break;
		
	default:
		break;
}
draw_set_halign(fa_left);
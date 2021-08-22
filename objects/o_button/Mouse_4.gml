/// @description Button event

switch (current_type) {
	case btype.start:
		room_goto(Level1);
		break;
	
	case btype.volume:
		break;
		
	case btype.credit:
		url_open_ext("https://koolernolan.itch.io/", "_blank");
		break;
		
	case btype.play_again:
		room_goto(Level1);
		break;
		
	default:
		break;
}
switch(room){
	case Title:
	draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 200, "HAUNTED HUNT",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 300,
			"Defeat ghosts and collect keys to unlock doors!"
		);
		draw_text(
			room_width/2, 400,
			"Arrow Keys/AD: move left/right"
		);
		draw_text(
			room_width/2, 450,
			"Mouse: Flashlight"
		);
		draw_text(
			room_width/2, 500,
			"Space/Up/W: Jump"
		);
		draw_text(
			room_width/2, 550,
			"Right click on signs for hints"
		);	
		draw_text(
			room_width/2, 650,
			">> PRESS SPACE TO START <<"
		);
	break;
		
	case Win:
		draw_set_halign(fa_center);
		var c = c_green;
		draw_text_transformed_color(
			room_width/2, 200, "YOU WON!",
			3, 3, 0, c,c,c,c, 1
		);
		break;
}
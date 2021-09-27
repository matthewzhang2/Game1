switch(room){
	case Room2:
			draw_set_halign(fa_center);
	
			var c = c_white;
			draw_text_transformed_color(
				room_width/8, 200, "Haunted Hunt",
				3, 4, 0, c,c,c,c, 1
			);
			draw_text(
				room_width/8, 300,
				@"Use your flashlight to kill all the ghosts

WASD: move
Point/Click: flashlight


>> PRESS ENTER TO START <<
"
			);
			draw_set_halign(fa_left);
			break;
	
}
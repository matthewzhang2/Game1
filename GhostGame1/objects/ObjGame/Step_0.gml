if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case Room2:
			room_goto(Room1);
			room_instance_clear(Room2)
			break;
	}
}
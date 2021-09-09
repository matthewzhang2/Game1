x = ObjPlayer.x;
y = ObjPlayer.y+8;
 
 
 
image_angle = point_direction(x,y,mouse_x,mouse_y);




if(mouse_check_button_pressed(mb_left)){
	recoil = 4;
	with (instance_create_layer(x+5,y, "Gun", ObjBullet)){
		speed = 0;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}	
}else if(mouse_check_button_released(mb_left)){
	with (instance_create_layer(x+5,y, "Gun", ObjBullet)){
		instance_destroy();
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
}else {
	image_yscale = 1;
}
x = ObjPlayer.x;
y = ObjPlayer.y+8;
 
 
 
image_angle = point_direction(x,y,mouse_x,mouse_y);




if(mouse_check_button(mb_left)) &&  !instance_exists(ObjBullet){
	recoil = 0;
	with (instance_create_layer(x+lengthdir_x(0,image_angle),y+lengthdir_y(0,image_angle), "Bullets", ObjBullet)){
		speed = 0;
		direction = other.image_angle;
		image_angle = point_direction(x,y,mouse_x,mouse_y);
		x = x - lengthdir_x(0,direction);
		y = y - lengthdir_y(0,direction);
	}	
	
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
}else {
	image_yscale = 1;
}
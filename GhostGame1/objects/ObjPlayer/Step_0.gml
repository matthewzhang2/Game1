//movement
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) ;

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//collison
if (place_meeting(x,y+1,ObjWall)) && (key_jump){
	vsp = -7;
	
}

if (place_meeting(x+hsp,y,ObjWall)){
	while(!place_meeting(x+sign(hsp),y,ObjWall)){
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

if (place_meeting(x,y+vsp,ObjWall)){
	while(!place_meeting(x,y+sign(vsp),ObjWall)){
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;

//animation
if (!place_meeting(x,y+1,ObjWall)){
	sprite_index = SpritePlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = SpritePlayer;
	}else {
		sprite_index = SpritePlayerRun;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
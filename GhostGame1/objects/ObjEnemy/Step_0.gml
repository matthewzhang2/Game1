vsp = vsp + grv;

if (place_meeting(x+hsp,y,ObjWall)){
	while(!place_meeting(x+sign(hsp),y,ObjWall)){
		x = x + sign(hsp);	
	}
	hsp = -hsp;
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
	sprite_index = SpriteEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = SpriteEnemy;
	}else {
		sprite_index = SpriteEnemyRun;
	}
}


if (hsp != 0) image_xscale = sign(hsp);
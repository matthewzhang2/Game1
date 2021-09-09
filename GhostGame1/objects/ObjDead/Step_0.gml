if (done == 0){
	vsp = vsp + grv;

	if (place_meeting(x+hsp,y,ObjWall)){
		while(!place_meeting(x+sign(hsp),y,ObjWall)){
			x = x + sign(hsp);	
		}
		hsp = 0;
	}
	x = x + hsp;

	if (place_meeting(x,y+vsp,ObjWall)){
		if (vsp > 0){
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x,y+sign(vsp),ObjWall)){
			y = y + sign(vsp);	
		}
		vsp = 0;
	}
	y = y + vsp;
}
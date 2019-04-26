	hspeed = 1;
	if check_box_collision(obj_gui.collision_map, obj_gui.jumpthru_map, hspeed, 0) then {
		//REMOVE X FRACTION
			x = floor(x);
		
		//MOVE CLOSER UNTIL TOUCHING WALL
			while not check_box_collision(obj_gui.collision_map, obj_gui.jumpthru_map,  sign(hspeed), 0) {
				x += sign(hspeed);
			}//end while
	
		//STOP HSPEED
			hspeed =  0;
			
			dir *= -1;
			
			
	}//end if


// VERTICLE COLLISION CHECK (LOOK AHEAD)
	if check_box_collision(obj_gui.collision_map, obj_gui.jumpthru_map, 0, vspeed) then {
		//REMOVE X FRACTION
			y = floor(y);
		
		//MOVE CLOSER UNTIL TOUCHING WALL
			while not check_box_collision(obj_gui.collision_map, obj_gui.jumpthru_map,  0, sign(vspeed)) {
				y += sign(vspeed);
			}//end while
	
		//STOP HSPEED
			vspeed =  0;
			gravity = 0;
		
			
			
	}//end if
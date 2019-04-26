#region MOVEMENT
hspeed = dir * movespeed; 

#endregion

#region HORIZONTAL COLLISION CHECK (LOOK AHEAD)
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
#endregion



#region VERTICLE COLLISION CHECK (LOOK AHEAD)
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
	
	
#endregion

#region //VERTICAL COLLISION-----SHAUN CODE
//if (place_meeting (x, y+vspeed, obj_gui.collision_map)){
//	while(!place_meeting (x,y+sign(vspeed),obj_gui.collision_map)){
//	y += sign(vspeed);
//	}
//	vspeed = 0
//}
//
//y += vspeed
#endregion

#region //ENEMY COLLISION
if (place_meeting (x,y, obj_mario) && sprite_index != spr_enemy_death) {
	//y-6 effects how many pixels up mario needs to be to kill enemy
	if (obj_mario.y < y-6) {
		with (obj_mario) vspeed =-jump_speed	
		//play_sound(snd_enemy_death);
		sprite_index = spr_enemy_death;
		if y - sprite_yoffset < 0 {
		   y = sprite_yoffset;
		}
	} else {
		sprite_index = spr_baby_mario_death;
		alarm[0] = room_speed *2;
		obj_mario.hp =0;
	}
	//if sprite_index = spr_baby_mario_death then {
	//	obj_mario.hp =0;
	//}
}

#endregion

if hp <= 0 {
	/// @description Goomba flattening
     instance_create_depth (round(x),y ,depth , obj_brown_guy.spr_enemy_death);
	// instance_destroy();

}
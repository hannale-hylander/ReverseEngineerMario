//SET DEFAULT GAME SPEED
	game_set_speed(60, gamespeed_fps);

//SET DEFAULT WINDOW SIZE
	window_set_size(256 *10 ,192*6 );

//CREATE GUI OBJECT
	instance_create_depth(0,0,-4096, obj_gui);
	
//GO TO NEXT ROOM
	room_goto_next();
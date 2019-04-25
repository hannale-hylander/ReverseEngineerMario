current_camera        = -1;
current_camera_x      = -1;
current_camera_y      = -1;
current_camera_width  = -1;
current_camera_height = -1; 

audio_play_sound(snd_theme_loop, 0, true);

	
var lay_id = layer_get_id("lay_collision");
collision_map = layer_tilemap_get_id(lay_id);
lay_id = layer_get_id("lay_jumpthru");
jumpthru_map = layer_tilemap_get_id(lay_id);
lay_id = layer_get_id("lay_breakable");
breakable_map = layer_tilemap_get_id(lay_id);







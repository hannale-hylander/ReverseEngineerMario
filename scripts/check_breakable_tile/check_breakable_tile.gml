var b_set	   = argument0
var x_off      = argument1;
var y_off      = argument2;

var tile_data  = -1; 
var tile_index = 0;
var collided = false


tile_data = tilemap_get_at_pixel(b_set, bbox_left + x_off, bbox_top + y_off);
tile_index = tile_get_index(tile_data); 
collided = collided or tile_index > 0;

tile_data  = tilemap_get_at_pixel(b_set, bbox_right + x_off, bbox_top + y_off);
tile_index = tile_get_index(tile_data); 
collided = collided or tile_index > 0;

tile_data = tilemap_get_at_pixel(b_set, bbox_left + x_off, bbox_bottom + y_off);
tile_index = tile_get_index(tile_data); 
collided = collided or tile_index > 0;

tile_data = tilemap_get_at_pixel(b_set, bbox_right + x_off, bbox_bottom + y_off);
tile_index = tile_get_index(tile_data); 
collided = collided or tile_index > 0;
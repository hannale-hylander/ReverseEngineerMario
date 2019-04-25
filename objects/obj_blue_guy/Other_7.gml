if (sprite_index == spr_enemy_death) then {
	alarm[0] = room_speed *2;
	instance_destroy();
}
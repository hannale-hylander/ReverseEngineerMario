//HORIZONTAL
if (place_meeting(x + hspeed, y, argument0)) {
	while(!place_meeting(x + sign(hspeed), y, argument0)) {
		x += sign(hspeed)
	}
	hspeed = 0;
}
x += hspeed;

//VERTICAL
if (place_meeting(x, y + vspeed, argument0)) {
	while(!place_meeting(x, y + sign(hspeed), argument0)) {
		y += sign(hspeed)
	}
	vspeed = 0;
}
y += vspeed;







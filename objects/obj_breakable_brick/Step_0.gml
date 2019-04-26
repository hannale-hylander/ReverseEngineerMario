if place_meeting(x, y+1, obj_mario) {
	bouncing = true;
}
if (bouncing) {
	y -=1;
	if (y == initial_y -8) 
	bouncing = false;
}
if (!bouncing) {
	if y != initial_y 
	y +=1
}


//if y!=ystart y+=1; 
// when y doesn't equal y that's only because we moved it upwards, 
//so move it down 1 pixel at a time until it is in place.

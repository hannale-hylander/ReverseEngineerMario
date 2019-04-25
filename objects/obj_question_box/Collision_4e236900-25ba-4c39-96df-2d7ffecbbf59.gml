sprite_index = spr_question_hit;
instance_create_depth(x,y -10,depth, obj_coin);
//ar coinblock_collision=collision_point(x, bbox_top-1, obj_question_box, false, true);
//   if coinblock_collision
//   {
//		obj_mario.y =y_previous;
//      // score+=150;
//       //sound_play(coingrab);
//       vsp=2;
//       with coinblock_collision instance_destroy();
//		instance_create_depth(x,y +3,depth, obj_coin);
//   }

var coinblock_collision=collision_point(x, bbox_top-1, obj_question_box, false, true); // check for a collision 1 pixel above the center of the player's sprite
    if coinblock_collision // if something is found, proceed with the code.
    {
        score+=150;
      //  sound_play(coingrab);
        vsp=2;
        with coinblock_collision   // this executes code as if it were coming from the block we collided with
        {
            instance_change(obj_question_box, false);  // change the block to a wall block. "false" is there so we don't run the create event
            ystart = y;  // make ystart equal the current y position, so the block knows how far down to fall
            y -= 5;  // move the block 5 pixels up
			

        }
    }

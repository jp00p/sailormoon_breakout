audio_play_sound(misc_sound, 1, false);

switch(image_index){
	
	case 0:
	// lengthboi
		with(obj_bat){
			image_xscale += 0.5;
			if(image_xscale >= 3) image_xscale = 3;
			alarm[0] = 5*room_speed;
		}
	break;
	
	case 1:
	// normalize ball speed
		with(obj_ball){
			speed = spd;
		}
	
	break;
	
	case 2:
		// bonus ball
		instance_create_layer(x, y, "Instances", obj_bonus_ball);	
	break;
	
	case 3:
		// extra life
		global.player_lives += 1;
	break;
	
	case 4:
		// speed up paddle
		with(obj_bat){
			spd += 1;
			alarm[1] = 5*room_speed;
		}
	break;
	
}

instance_destroy();
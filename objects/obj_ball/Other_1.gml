
if(bbox_left < 0 or bbox_right > room_width){
	hitwall += 1;
	audio_play_sound(negative, 1, false);
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
	hspeed *= -1;
	if(hitwall >= 5){
		// hit the wall more than 6 times
		direction = random_range(0, 270);
		hitwall = 0;
	}
	if(speed < 50) speed += 0.25;
}

if(bbox_top < 0){
	audio_play_sound(negative, 1, false);
	y = clamp(y, sprite_yoffset, room_height-sprite_yoffset);
	vspeed *= -1;
	if(speed < 50) speed += 0.25;
}

if(bbox_bottom > room_height){
	audio_play_sound(negative_2, 1, false);
	global.player_lives -= 1;
	obj_bat.spd = obj_bat.starting_spd;
	obj_bat.image_xscale = 1;
	instance_destroy();
	
	if(global.player_lives <= 0){
		obj_control.game_over = true;
		if(global.player_score > global.high_score){
			global.high_score = global.player_score;
		}
	} else {
		instance_create_layer(xstart, ystart, "Instances", obj_ball);	
	}
	
	
}
if(instance_number(obj_block) <= 0 and room != rm_start and room != rm_game_over and room != rm_win){
	audio_play_sound(positive, 1, false);
	room_goto_next();
}

if(keyboard_check_pressed(ord("N"))){
	room_goto_next();
}

if(!game_started and !game_over){
	if(room == rm_start){
		if(keyboard_check_pressed(vk_space)){
			global.player_score = 0;
			room_goto(room0);
			game_started = true;
		}
	} else {
		if(keyboard_check_pressed(vk_space)){
			// showing game over screen
			
			room_goto(rm_start);
			game_started = false;
		}
	}
}


if(game_over){
	audio_play_sound(save, 1, false);
	room_goto(rm_game_over);
	game_started = false;
	game_over = false;
	global.player_lives = 3;
}



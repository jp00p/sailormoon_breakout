

if(bbox_left < 0 or bbox_right > room_width){
	audio_play_sound(negative, 1, false);
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset);
	hspeed *= -1;
	if(speed < 25) speed += 0.25;
}

if(bbox_top < 0){
	audio_play_sound(negative, 1, false);
	y = clamp(y, sprite_yoffset, room_height-sprite_yoffset);
	vspeed *= -1;
}

if(bbox_bottom > room_height){
	audio_play_sound(negative_2, 1, false);
	
	instance_destroy();
	
}
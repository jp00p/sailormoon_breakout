audio_play_sound(misc_menu, 1, false);
move_bounce_all(true);
if(speed < 50) speed += 0.25;

hitwall = 0;
other.hits += 1;
other.image_index = other.hits;
if(other.hits >= other.hp){
	global.player_score += other.point_value;
	instance_destroy(other);
}
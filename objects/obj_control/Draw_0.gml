
draw_text(8,8, "Score: " + string(global.player_score));
draw_set_halign(fa_right);
draw_text(room_width-8,8, "High Score: " + string(global.high_score));
draw_set_halign(fa_left);

// draw lives
if(room != rm_start and room != rm_game_over){
_x = (room_width / 2) - ((global.player_lives-1) * 32);
	repeat(global.player_lives){
		image_speed = 0.25;
		draw_sprite(spr_lives, -1, _x, room_height-16);
		//instance_create_layer(_x, room_height-16, "Lives", obj_life)
		_x += 64;
	}
}
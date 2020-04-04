var cs = 32;
var cpad = 8;
var sstart = 128;
var tstart = sstart + cs + cpad;
var row0 = 180;
var row1 = row0 + cs + cpad;
var row2 = row1 + cs + cpad;
var row3 = row2 + cs + cpad;
var row4 = row3 + cs + cpad;
var row5 = row4 + cs + cpad;

draw_set_font(fnt_title);
draw_text(cs,row0-72, "Moon Breakers");
draw_set_font(fnt_game);



draw_set_alpha(0.5);
draw_rectangle_color(cs, row0-cs, room_width-cs, room_height-16, c_black, c_black, c_black, c_black, 0 );
draw_set_alpha(1);

image_speed = 0.025;
draw_sprite(spr_sailormoon, -1, room_width-128, 150);

draw_text(tstart-52,row0-22, "Powers:");

draw_sprite(spr_powers,0,sstart,row1);
draw_text(tstart,row1-22, "Rainbow Lengthening Action");

draw_sprite(spr_powers,1,sstart,row2);
draw_text(tstart,row2-22, "Miracle Ball Slowing Meditation");

draw_sprite(spr_powers,2,sstart,row3);
draw_text(tstart,row3-22, "Lunar Bonus Ball of the Twilight Moon");

draw_sprite(spr_powers,3,sstart,row4);
draw_text(tstart,row4-22, "Moon Princess Extra Life Escalation");

draw_sprite(spr_powers,4,sstart,row5);
draw_text(tstart,row5-22, "Rainbow Heart Scepter Speed Intensification Action");

draw_set_halign(fa_center);
draw_text(room_width/2, row5+24, "Press SPACE to start");
draw_set_halign(fa_left);

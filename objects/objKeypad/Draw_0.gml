if (solved) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text(room_width / 2, 100, message);
	draw_set_font(tileFont);
}

// visual guess icons
var padding = 64;

for (var i = 0; i < array_length(input); i++) {
	draw_set_halign(fa_center);
    draw_set_valign(fa_top);
	draw_circle_colour(room_width / 2 + i * padding, 50, 32, c_white, c_white, true);
	}
	
if (tryAgain) {
	    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text(room_width / 2, 100, "Try Again");
	draw_set_font(tileFont);
}
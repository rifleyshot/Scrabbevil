if (solved) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(room_width / 2, room_height / 2, message);
	draw_set_font(tileFont);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
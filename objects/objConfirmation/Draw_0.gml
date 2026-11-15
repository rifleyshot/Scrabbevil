draw_self();

if (!checkAnswer() && wrongTimer > 0) {
	draw_set_font(tileFont);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(room_width / 2, 100, "Something is not right here...");
    draw_set_halign(fa_left);
 }
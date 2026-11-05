if (place_meeting(x, y, objView)) {
draw_set_font(tileFont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y - 24, "E");
}
// Shows an E on the top of your head if the player is on an "objView" object to indicate interaction
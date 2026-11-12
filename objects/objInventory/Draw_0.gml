draw_self();

var _slots   = array_length(item_array);
var _bar_w   = 640;
var _slot_w  = _bar_w / _slots;   

var _bar_x = _bar_w / 2;
var _bar_y = display_get_gui_height() - 70;

for (var i = 0; i < _slots; i++) {
    var _cx = _bar_x + 16 + (_slot_w * i) + (_slot_w / 2);   
    var _cy = _bar_y;

   if (!item_array[i].filled) { // if a slot is filled
	   
        draw_set_color(c_black);
		draw_sprite_ext(sprEmpty, 0, _cx - 32, _cy - 32, 1, 1, 0, c_white, 0.35);
        draw_set_color(c_white); } else {
    var _y_offset = (i == item_pos) ? -8 : 0; // only works if its selected. conditional. " slot is the selection position. heres what to do if true, heres what to do if false" :)

    draw_sprite_ext(sprPiece, 0, _cx - 32, _cy - 32 + _y_offset, 2, 2, 0, c_white, 1);

    draw_set_font(tileFont);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text_transformed(_cx, _cy + _y_offset, item_array[i].letter, 2, 2, 0);
    draw_set_color(c_white);// back to normal
	draw_set_halign(fa_left); 
    draw_set_valign(fa_top);
}
draw_set_font(tileFont);
draw_text_transformed(_cx-32, _cy-38, string(i +1), 0.75, 0.75, 0); // numbers of the slots
}

draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
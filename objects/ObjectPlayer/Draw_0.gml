
xFrame = round((90 - dir + 360) / 45) mod 8;

draw_sprite_part(
    sprplayerDir,
    0,
    xFrame * frameSize,
    0,
    frameSize,
    frameSize,
    x ,
    y 
);

if (target != noone && instance_exists(target)) {
    if (target.playerSet) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_red);
    }

    draw_rectangle(target.bbox_left - 2, target.bbox_top - 2,
                   target.bbox_right + 2, target.bbox_bottom + 2, true);
    draw_set_color(c_white);
}

if (place_meeting(x, y, objView)) {
draw_set_font(tileFont);
draw_set_color(c_white);
draw_text(x, y, "E");
}
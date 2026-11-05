// for 8 way turn around of character when walking
xFrame = round((90 - dir + 360) / 45) mod 8;

draw_sprite_part(
    sprplayerDir,
    0,
    xFrame * frameSize,
    0,
    frameSize,
    frameSize,
    x - (frameSize / 2),  // recenter sprite as draw_sprite_part doesn't respect sprite origin
    y - (frameSize / 2)
);

// in scrabble room, visually show which one you will pick up so people dont accidentally pick up one they dont want to
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
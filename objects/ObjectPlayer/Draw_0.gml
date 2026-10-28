draw_self(); 

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
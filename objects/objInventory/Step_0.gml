for (var i = 0; i < array_length(item_array); i++) {
    if (keyboard_check_pressed(ord("1") + i)) {
        item_pos = i;
    }
}
target = noone;
var tile = instance_nearest(x, y, objScrabble);
var _hor = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")));
var _ver = (keyboard_check(vk_down)  or keyboard_check(ord("S"))) - (keyboard_check(vk_up)   or keyboard_check(ord("W")));

if (_hor != 0 || _ver != 0) {
    var _dir = point_direction(0, 0, _hor, _ver);
    var _xspd = lengthdir_x(player_speed, _dir);
    var _yspd = lengthdir_y(player_speed, _dir);


    move_and_collide(_xspd, _yspd, Obj_Wall);
}

if (tile != noone && point_distance(x, y, tile.x, tile.y) < 48) {
    target = tile;
}

if (target != noone && keyboard_check_pressed(ord("E"))) {
    if (target.playerSet && objInventory.add_letter(target.letter)) {
        instance_destroy(target);
        target = noone;
		show_debug_message(objInventory.item_array);
    }
}
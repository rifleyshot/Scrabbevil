
if (place_meeting(x, y, ObjectPlayer) && keyboard_check_pressed(ord("E"))) {
	show_debug_message("Warp: target = " + string(targetX) + ", " + string(targetY));
    ObjectPlayer.x = targetX;
	ObjectPlayer.y = targetY;
    room_goto(targetRoom);
}

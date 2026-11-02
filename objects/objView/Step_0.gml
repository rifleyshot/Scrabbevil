if (place_meeting(x, y, ObjectPlayer) && keyboard_check_pressed(ord("E"))) {
	global.returnRoom = roomPuzzle;
	ObjectPlayer.visible = false;
    ObjectPlayer.canMove = false;
    room_goto(targetWall);
}
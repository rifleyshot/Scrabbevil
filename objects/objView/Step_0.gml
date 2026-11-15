if (place_meeting(x, y, ObjectPlayer) && keyboard_check_pressed(ord("E"))) || room=roomWallPaintings && mouse_check_button_pressed(mb_left) {
	global.returnRoom = roomPuzzle;
	ObjectPlayer.visible = false;
    ObjectPlayer.canMove = false;
	objInventory.visible = false;
    room_goto(targetWall);
}

if (variable_instance_exists(id, "watchBookshelf") && watchBookshelf
    &&  global.bookshelfMove) {
    instance_destroy();
}
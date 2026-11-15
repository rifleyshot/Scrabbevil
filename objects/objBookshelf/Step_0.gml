if (global.bookshelfMove) {
	      if (point_distance(x, y, movement, y) > 5) {
        move_towards_point(movement, y, 5);
    } else {
        speed = 0;
        x = movement;  }}
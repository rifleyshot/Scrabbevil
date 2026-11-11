for (var c = 0; c < cols; c++) {
    for (var r = 0; r < rows; r++) {
        draw_set_color((c + r) mod 2 == 0 ? c_ltgray : c_silver);

        var _x = boardX1 + c * cellSize;
        var _y = boardY1 + r * cellSize;

        draw_rectangle(_x, _y, _x + cellSize - 1, _y + cellSize - 1, true);
    }
}
draw_set_color(c_white);
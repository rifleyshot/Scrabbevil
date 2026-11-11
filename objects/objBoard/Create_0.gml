depth = 10; // this just makes the grid show up at the very bottom
cellSize = 32;
boardX1 = 48;
boardY1 = 48;
boardX2 = 1232;
boardY2 = 560;

cols = (boardX2 - boardX1) div cellSize; 
rows = (boardY2 - boardY1) div cellSize; // how many squares fit in each column and row

board = array_create(cols);
for (var c = 0; c < cols; c++) {
    board[c] = array_create(rows, noone);
} // big ass array which allows you to place pieces in specific cells (column 5, row 3) board[5][3].

function cellToX(_col) { return boardX1 + _col * cellSize; } // cell to pixel conversion
function cellToY(_row) { return boardY1 + _row * cellSize; }
function xToCell(_x)   { return floor((_x - boardX1) / cellSize); } // pixel to cell conversion
function yToCell(_y)   { return floor((_y - boardY1) / cellSize); }

function placePiece(_col, _row, _letter, _playerSet) { // takes in col, row, letter of piece, and whether its the players to function
    if (board[_col][_row] != noone) return noone;// if the square already has a piece, dont place

    var _p = instance_create_layer(cellToX(_col), cellToY(_row), "Instances", objScrabble);
    _p.letter = _letter;
    _p.playerSet = _playerSet;

    board[_col][_row] = _p;
    return _p;// remembers new pieces placed
} //both player and godhand uses this

function removePiece(_piece) {
    var _col = xToCell(_piece.x);
    var _row = yToCell(_piece.y);// which cell is it in
    if (board[_col][_row] == _piece) {
        board[_col][_row] = noone;
    }//remove it from the board so it is considered free
}

global.roundNum = 1;

global.rounds = [
    { word: "THWACK", col: 21, row: 4, directionx: 0, directiony: 1,
		answer: "CROWBAR", aCol: 18, aRow: 6, adirectionx: 1, adirectiony: 0, gift: "hasCrowbar",
		video: "Bluejay.mov"},
    { word: "STRIKE",  col: 16, row: 2, directionx: 0, directiony: 1,
		answer: "TRUMPET", aCol: 15, aRow: 4, adirectionx: 1, adirectiony: 0, gift: "hasTrumpet",
		video: "Bluejay.mov"},  
    { word: "EXECUTE",   col: 17, row: 13, directionx: 1, directiony: 0,
		answer: "DOORKEY", aCol: 17, aRow: 9, adirectionx: 1, adirectiony: 0, gift: "hasDoorkey",
		video: "Bluejay.mov"}  
];

function roundStart() {
    var _r = global.rounds[global.roundNum - 1]; // doesnt read outside of the functions so has to be declared locally

    for (var i = 0; i < string_length(_r.word); i++) {
        var _letter = string_char_at(_r.word, i + 1);
        objBoard.placePiece(_r.col + _r.directionx * i, _r.row + _r.directiony * i, _letter, false); // "god hand" places the pieces
    }
}

function checkAnswer() {
    var _r = global.rounds[global.roundNum - 1];

    for (var i = 0; i < string_length(_r.answer); i++) {
        var _c = _r.aCol + _r.adirectionx * i;
        var _row = _r.aRow + _r.adirectiony * i;
		var _piece = objBoard.board[_c][_row];
		
        if (_piece == noone) return false;
        if (_piece.letter != string_char_at(_r.answer, i + 1)) return false; // if they dont match up, then they did it wrong
    }
    return true;   
}

function roundEnd() {

    with (objScrabble) {
        playerSet = false;
    } // locks all pieces on the board

    global.roundNum++; // to the next round
    objInventory.hp -= 25; // reduce hp
	
     roundStart(); // place the next word for the next round

}
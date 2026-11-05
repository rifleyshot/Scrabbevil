

// the key:  DOWN, UP, RIGHT
key = [3, 1, 2];
input = [];
progress = 0;
solved = global.flags[$ "keypad_solved"] ?? false;
reward = ["H","A","M","M","R"]
message = "";
tryAgain = false;

press = function(_dir) {
    if (solved) exit;
	tryAgain = false;
	    array_push(input, _dir);
		
		 if (array_length(input) < array_length(key)) exit; // wait for however many input ( as long as the key array, this is so we can easily make it more complicated if you want)
		var correct = true;
    for (var i = 0; i < array_length(key); i++) {
        if (input[i] != key[i]) correct = false;
    }

    if (correct) {
        giveReward();
    } else {
		tryAgain = true;
        input = []; // try again loser
    }
};

giveReward = function() {
	for (var i = 0; i < array_length(reward); i++) {
        objInventory.add_letter(reward[i]);
    }

    global.flags.keypad_solved = true;
	message = "Scrabble tiles fell into your pocket..";
    solved = true;
	show_debug_message(objInventory.item_array);
}
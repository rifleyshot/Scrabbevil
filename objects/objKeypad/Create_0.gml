

// the key:  DOWN, UP, RIGHT
key = [3, 1, 2];
progress = 0;
solved = global.flags[$ "keypad_solved"] ?? false;
reward = ["H","A","M","M","R"]
message = "";

press = function(_dir) {
    if (_dir == key[progress]) {
        progress++;
        if (progress >= array_length(key)) {
				giveReward();
		}
    } else {
        progress = (_dir == key[0]) ? 1 : 0;
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
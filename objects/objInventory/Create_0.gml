
if (instance_number(objInventory) > 1) {
    instance_destroy();
    exit;
}

item_pos = 0;
item_pos_index = 0;
item_array = array_create(9);

for (var i = 0; i < 9; i++) {
    item_array[i] = {
        letter: "", 
		filled: false
    };
}

add_letter = function(_letter) {
    for (var i = 0; i < array_length(item_array); i++) {
        if (!item_array[i].filled) {
            item_array[i].letter = _letter;
            item_array[i].filled = true;
            return true;
        }
    }
    return false;
};
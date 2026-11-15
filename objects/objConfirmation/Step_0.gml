if (mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, id)) {   
    if (checkAnswer()) {
		var _video = global.rounds[global.roundNum - 1].video;
		TransitionStart(_video, sqFadeIn, sqFadeout);
		roundEndTimer = 60;

    } else {
        show_debug_message("wrong");
		wrongTimer = 180;
    }
}
 var _gift = global.rounds[global.roundNum - 1].gift;
 
if (roundEndTimer > 0) {
    roundEndTimer--;
    if (roundEndTimer == 0) {
        variable_instance_set(objItems, _gift, true);  // gives player the gift
        roundEnd();
		show_debug_message("i ran!");
    }
}

if (wrongTimer > 0) {
    wrongTimer--;
}
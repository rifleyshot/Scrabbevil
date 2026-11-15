// sara spalding tutorial but i added video addition
// this may not look like much but i genuinely died doing this
global.midTransition = false;

function TransitionPlaceSequence(_type)
{
    if (layer_exists("transition")) layer_destroy("transition");
    var _lay = layer_create(-99, "transition");
    layer_sequence_create(_lay, 0, 0, _type);
}

function TransitionStart(_video, _typeOut, _typeIn)
{
    if (!global.midTransition)
    {
        global.midTransition = true;
        global.videoTarget = _video; // i added this
        global.videoTypeIn = _typeIn; // and this
        TransitionPlaceSequence(_typeOut);
        return true;
    }
    else return false;
}

function TransitionChangeRoom()
{
	if (layer_exists("transition")) layer_destroy("transition"); // this might cause problems later im just marking it so if i cry later i know who the problem is
	show_debug_message("fired");
	ObjectPlayer.visible = false; // added all these because else they show thru the video due to their marked persistence, same with how it is for looking at walls
    ObjectPlayer.canMove = false;
	objInventory.visible = false;
    if (!instance_exists(objVideoPlayer)) instance_create_depth(0, 0, -99, objVideoPlayer);
    objVideoPlayer.PlayVideo(global.videoTarget); // and this
    room_goto(roomPuzzle);
	ObjectPlayer.x = 478;
	ObjectPlayer.y = 174;
}


function TransitionFinished()
{
    ObjectPlayer.canMove = true;

    layer_sequence_destroy(self.elementID);
    global.midTransition = false;
}
if (!playing) exit;

var _status = video_get_status();
if (_status == video_status_playing) started = true;

if ((started && _status == video_status_closed))
{
    video_close();
    playing = false;
	ObjectPlayer.visible = true;
	objInventory.visible = true;
    TransitionPlaceSequence(global.videoTypeIn);
}

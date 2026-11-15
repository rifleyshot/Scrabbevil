playing = false;
started = false;

PlayVideo = function(_file)
{
    video_open(_file);
    video_enable_loop(false);
    playing = true;
    started = false;
}
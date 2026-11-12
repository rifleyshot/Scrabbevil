if (hintTimer > 0) {
    hintTimer--;
    if (hintTimer == 0 && broken) instance_destroy();
}
randomize();


shake_timer = 2;

/// set up camera
cam = view_camera[0];
follow = o_player;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
xto = xstart;
yto = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;


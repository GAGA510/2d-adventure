







/// update camera

///update destination
if (instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;
}

///update object position
x += (xto - x) / 15;
y += (yto - y) / 15;

///keep camera canter inside room
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

///screen shake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);


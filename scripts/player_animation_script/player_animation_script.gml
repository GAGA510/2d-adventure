///movement animation :)
function player_animation_script(){
	var _cardinalDirection = round(direction/90);
	var _totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = local_Frame + (_cardinalDirection * _totalFrames);
	local_Frame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	///animation loop
	if (local_Frame >= _totalFrames)
	{
		animationEnd = true;
		local_Frame -= _totalFrames;
	} else animationEnd = false;
	
	
	
}
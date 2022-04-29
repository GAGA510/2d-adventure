
function player_state_roll(){
	///movement
	hsp = lengthdir_x(roll_speed, direction)
	vsp = lengthdir_y(roll_speed, direction)
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - roll_speed);
	var _collided = PlayerCollision();
	
	///update sprite
	sprite_index = sprite_Roll;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distance_roll)) * _totalFrames), _totalFrames - 1);
	
	///change state
	if (moveDistanceRemaining <= 0)
	{
		state = player_state_free;
	}
	
	if (_collided)
	{
		state = player_state_free;
		screenshake()
	}
}
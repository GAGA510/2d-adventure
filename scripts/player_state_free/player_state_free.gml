// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_free(){
	///movement
hsp = lengthdir_x(inputMagnitude * walk_speed, inputDirection);
vsp = lengthdir_y(inputMagnitude * walk_speed, inputDirection);

PlayerCollision();

///update sprite index
var _old_Sprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = sprite_Run;
} else sprite_index = sprite_Idle;
if (_old_Sprite != sprite_index) local_Frame = 0;

///update image index
player_animation_script();
}


///get player input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

script_execute(state);

if keyboard_check_pressed(vk_space)
{
	keyActivate = true;	
} else {
	keyActivate = false;
}
///change state
if keyActivate = true
{
	state = player_state_roll;
	moveDistanceRemaining = distance_roll
}
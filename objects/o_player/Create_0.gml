state = player_state_free;

collision_Map = layer_tilemap_get_id(layer_get_id("coll"));

image_speed = 0;
hsp = 0;
vsp = 0;
walk_speed = 1.5;
roll_speed = 5;
distance_roll = 50;
keyActivate = false;

sprite_Roll = s_Roll;
sprite_Run = s_Player_run;
sprite_Idle = s_Player;
local_Frame = 0;

alarm_set(0, room_speed * 1);

camera_targer = noone;


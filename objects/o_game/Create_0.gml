/// globals
randomize();

toggle_pause = 0;
paused = false

global.textSpeed = .75;

global.iCamera = instance_create_layer(0,0,layer,o_camera);

room_goto(ROOM_START);


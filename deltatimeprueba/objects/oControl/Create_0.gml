/// @description delta and alarms
//set fps
game_set_speed(5,gamespeed_fps);	

//delta
global.delta_factor = 1;
#macro delta global.delta_factor

//alarms
#macro ALARMINACTIVE -100
for (var i = 0; i < 12; i++) {
  Alarm[i] = ALARMINACTIVE;
}

//test alarm
segundos = 0;
Alarm[0] = 30;
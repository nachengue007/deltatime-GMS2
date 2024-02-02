/// @description deltaTime controller
delta = (delta_time/1000000) * 30;
show_debug_log(true);
//show_debug_message(delta)

for (var i = 0; i < array_length(Alarm); i++) {
  if(Alarm[i] > 0){
    Alarm[i] -= delta;
  }
  else if(Alarm[i] <= 0 && Alarm[i] >= ALARMINACTIVE){
    Alarm[i] = ALARMINACTIVE;
	event_perform(ev_alarm,i);
  }
}
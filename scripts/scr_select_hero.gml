if argument0.object_index == obj_lane {
    global.current_hero = noone;
    scr_select_lane(argument0);
} else {
    global.current_hero = argument0;
    scr_select_lane(argument0.lane);
}

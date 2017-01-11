with argument0 {
    if object_index == obj_lane {
        scr_select_lane(argument0);
        global.current_hero = noone;
    } else {
        scr_select_lane(argument0.lane);
        global.current_hero = argument0;
    }
}


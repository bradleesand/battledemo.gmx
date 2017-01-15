// Change Lane
var ch_lane = 0;
ch_lane -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
ch_lane += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (ch_lane != 0) {
    var new_lane_index = (global.current_hero.lane.index + ch_lane) % instance_number(obj_lane);
    var new_lane = instance_find(obj_lane, new_lane_index);
    scr_move_hero(global.current_hero, new_lane);
    scr_select_lane(new_lane);
}

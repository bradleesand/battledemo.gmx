// Change Hero
var ch_hero = 0;
ch_hero += max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0);
ch_hero -= max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0);

var hero_count = ds_list_size(global.current_lane.heroes);

if ch_hero != 0 and hero_count > 1 {
    while ch_hero < 0 {
        ch_hero += hero_count;
    }
    var current_hero_index = ds_list_find_index(global.current_lane.heroes, global.current_hero);
    var next_hero_index = (current_hero_index + ch_hero) mod hero_count;
    scr_select_hero(ds_list_find_value(global.current_lane.heroes, next_hero_index));
}

// Change Lane
var ch_lane = 0;
ch_lane += max(keyboard_check_pressed(ord("E")), 0);
ch_lane -= max(keyboard_check_pressed(ord("Q")), 0);

if (ch_lane != 0) {
    while (ch_lane < 0) {
        ch_lane += instance_number(obj_lane);
    }
    var new_lane_index = (global.current_lane.index + ch_lane) mod instance_number(obj_lane);
    var new_lane = instance_find(obj_lane, new_lane_index);
    var new_hero;
    if ds_list_empty(new_lane.heroes) {
        new_hero = new_lane; // scr_select_hero will detect that a lane was passed
    } else {
        new_hero = ds_list_find_value(new_lane.heroes, 0);
    }
    scr_select_hero(new_hero);
}

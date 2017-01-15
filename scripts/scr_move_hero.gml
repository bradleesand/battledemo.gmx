var hero = argument0;
var new_lane = argument1;
var old_lane = hero.lane;

hero.lane = new_lane;

var hero_index = ds_list_find_index(old_lane.heroes, hero);
ds_list_delete(old_lane.heroes, hero_index);
ds_list_add(new_lane.heroes, hero);

// TODO: Something else?

hero_sprite_index--;
var hero = instance_create(0, 0, obj_hero);
hero.sprite_index = ds_list_find_value(hero_sprites, hero_sprite_index);
hero.lane = global.current_lane;
ds_list_add(hero.lane.heroes, hero);
scr_select_hero(hero);

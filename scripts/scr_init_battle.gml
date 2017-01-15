randomize();
global.state = 'setup';
global.pause_charge = true;
global.current_hero = noone;

self.hero_sprites = ds_list_create();
ds_list_add(hero_sprites, Dino1_Orange);
ds_list_add(hero_sprites, Dino1_Purple);
ds_list_add(hero_sprites, Dino1_Green);
ds_list_add(hero_sprites, Dino1_Red);
self.hero_sprite_index = ds_list_size(self.hero_sprites);

var enemy_sprites;
enemy_sprites[0] = Dino2_Orange;
enemy_sprites[1] = Dino2_Purple;
enemy_sprites[2] = Dino2_Green;
enemy_sprites[3] = Dino2_Red;

var lane = instance_create(0, 0, obj_lane);
lane.index = 0;
lane.bg_main = bg_yellow;
lane.bg_mini = bg_yellow_mini;
lane.heroes = ds_list_create();
lane.enemies = ds_list_create();

global.current_lane = lane;

lane = instance_create(0, 0, obj_lane);
lane.index = 1;
lane.bg_main = bg_blue;
lane.bg_mini = bg_blue_mini;
lane.heroes = ds_list_create();
lane.enemies = ds_list_create();

lane = instance_create(0, 0, obj_lane);
lane.index = 2;
lane.bg_main = bg_green;
lane.bg_mini = bg_green_mini;
lane.heroes = ds_list_create();
lane.enemies = ds_list_create();

lane = instance_create(0, 0, obj_lane);
lane.index = 3;
lane.bg_main = bg_red;
lane.bg_mini = bg_red_mini;
lane.heroes = ds_list_create();
lane.enemies = ds_list_create();

instance_create(floor(window_get_width()/2), 0, obj_commands_menu);

for (var i = 0; i < instance_number(obj_lane); i++) {
    var lane = instance_find(obj_lane, i);
    
    var enemy = instance_create(window_get_width() - sprite_get_width(enemy_sprites[i]), 0, obj_enemy);
    enemy.sprite_index = enemy_sprites[i];
    enemy.lane = lane;
    ds_list_add(lane.enemies, enemy);
}

scr_spawn_hero();

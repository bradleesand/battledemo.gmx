global.pause_charge = false;

var hero_sprites;
hero_sprites[0] = Dino1_Orange;
hero_sprites[1] = Dino1_Purple;
hero_sprites[2] = Dino1_Orange;
hero_sprites[3] = Dino1_Orange;

var enemy_sprites;
enemy_sprites[0] = Dino2_Orange;
enemy_sprites[1] = Dino2_Purple;
enemy_sprites[2] = Dino2_Orange;
enemy_sprites[3] = Dino2_Orange;

var lane = instance_create(0, 0, obj_lane);
lane.index = 0;
lane.bg_main = bg_yellow;
lane.bg_mini = bg_yellow_mini;
lane.heroes = undefined;

lane = instance_create(0, 0, obj_lane);
lane.index = 1;
lane.bg_main = bg_blue;
lane.bg_mini = bg_blue_mini;
lane.heroes = undefined;

lane = instance_create(0, 0, obj_lane);
lane.index = 2;
lane.bg_main = bg_green;
lane.bg_mini = bg_green_mini;
lane.heroes = undefined;

lane = instance_create(0, 0, obj_lane);
lane.index = 3;
lane.bg_main = bg_red;
lane.bg_mini = bg_red_mini;
lane.heroes = undefined;

for (var i = 0; i < instance_number(obj_lane); i++) {
    var lane = instance_find(obj_lane, i);
    
    var hero = instance_create(150,0, obj_hero);
    hero.sprite_index = hero_sprites[i];
    hero.lane = lane;
    lane.heroes[0] = hero;
    
    show_debug_message(lane.heroes[0]);
    
    var charge_bar = instance_create(0, 0, obj_charge_bar);
    charge_bar.owner = hero;
    hero.charge_bar = charge_bar;
    
    show_debug_message(lane.heroes[0].charge_bar);
    
    var health_bar = instance_create(0, 0, obj_health_bar);
    health_bar.owner = hero;
    hero.health_bar = health_bar;
    
    var enemy = instance_create(0, 0, obj_enemy);
    enemy.lane = lane;
    
    var enemy_health_bar = instance_create(0, 0, obj_health_bar);
    enemy_health_bar.owner = enemy;
    enemy.health_bar = enemy_health_bar;
}

instance_create(10, 0, obj_commands_menu);

scr_select_lane(lane);

show_debug_message(global.current_lane.heroes[0].charge_bar);

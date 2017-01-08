global.pause_charge = false;
global.hero_objs[0] = obj_dino1_orange;
global.hero_objs[1] = obj_dino1_purple;
global.hero_objs[2] = obj_dino1_red;
global.hero_objs[3] = obj_dino1_green;

for(var i = 0; i < 4; i++) {
    var hero = instance_create(150,0, global.hero_objs[i]);
    hero.lane = i;
    global.heroes[i] = hero;
    
    var charge_bar = instance_create(0, 0, obj_charge_bar);
    charge_bar.lane = i;
    charge_bar.hero = hero;
    hero.charge_bar = charge_bar;
    global.charge_bars[i] = charge_bar;
    
    var health_bar = instance_create(0, 0, obj_health_bar);
    health_bar.lane = i;
    health_bar.hero = hero;
    hero.health_bar = health_bar;
    global.health_bars[i] = health_bar;
}

global.cmd_menu = instance_create(10, 0, obj_commands_menu);

scr_select_lane(0);

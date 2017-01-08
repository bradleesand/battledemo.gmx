global.pause_charge = false;
global.hero_objs[0] = obj_dino1_orange;
global.hero_objs[1] = obj_dino1_purple;
global.hero_objs[2] = obj_dino1_red;
global.hero_objs[3] = obj_dino1_green;

for(var i = 0; i < 4; i++) {
    global.heroes[i] = instance_create(150,0, global.hero_objs[i]);
    global.heroes[i].lane = i;
    global.charge_bars[i] = instance_create(0, 0, obj_charge_bar);
    global.charge_bars[i].lane = i;
    global.charge_bars[i].hero = global.heroes[i];
}

global.cmd_menu = instance_create(10, 0, obj_commands_menu);

scr_select_lane(0);

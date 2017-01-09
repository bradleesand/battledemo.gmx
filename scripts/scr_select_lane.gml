global.current_lane = argument0;

// Update lane backgrounds
for (var i = 0; i < instance_number(obj_lane); i++) {
    with (instance_find(obj_lane, i)) {
        event_user(0);
    }
}

for (var i = 0; i < instance_number(obj_hero); i++) {
    with (instance_find(obj_hero, i)) {
        event_user(0);
    }
}

for (var i = 0; i < instance_number(obj_enemy); i++) {
    with (instance_find(obj_enemy, i)) {
        event_user(0);
    }
}

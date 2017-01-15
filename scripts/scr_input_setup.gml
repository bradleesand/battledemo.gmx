if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) {
    global.current_hero.moving = false;
    if hero_sprite_index > 0 {
        scr_spawn_hero();
    } else {
        scr_start_battle();
    }
}

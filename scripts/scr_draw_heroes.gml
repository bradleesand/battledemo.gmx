for (var i = 0; i < 4; i++) {
    var hero = global.heroes[i];
    
    hero.y = background_y[i] + background_height[i] / 2;
    
    if (i == argument0) {
        hero.image_xscale = -0.5;
        hero.image_yscale = 0.5;
    } else {
        hero.image_xscale = -0.25;
        hero.image_yscale = 0.25;
    }
}

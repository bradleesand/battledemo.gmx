for(var i = 0; i < 4; i++) {
    var charge_bar = global.charge_bars[i];
    
    if (i == argument0) {
        charge_bar.x = 10;
        charge_bar.y = global.heroes[i].y + 100;
    } else {
        charge_bar.x = 250;
        charge_bar.y = global.heroes[i].y;
    }
}

for(var i = 0; i < 4; i++) {
    var charge_bar = global.charge_bars[i];
    
    if (i == argument0) {
        charge_bar.x = 10;
        charge_bar.y = charge_bar.hero.y + 100;
        charge_bar.height = 50;
        charge_bar.width = 200;
    } else {
        charge_bar.x = 250;
        charge_bar.y = charge_bar.hero.y;
        charge_bar.height = 20;
        charge_bar.width = 100;
    }
}

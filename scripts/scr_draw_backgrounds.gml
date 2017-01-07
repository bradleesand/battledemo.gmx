if (argument0 == 0) {
    background_index[0] = bg_yellow;
} else {
    background_index[0] = bg_yellow_mini;
}
background_x[0] = 0;
background_y[0] = 0;

if (argument0 == 1) {
    background_index[1] = bg_blue;
} else {
    background_index[1] = bg_blue_mini;
}
background_x[1] = 0;
background_y[1] = background_height[0];

if (argument0 == 2) {
    background_index[2] = bg_green;
} else {
    background_index[2] = bg_green_mini;
}
background_x[2] = 0;
background_y[2] = background_y[1] + background_height[1];

if (argument0 == 3) {
    background_index[3] = bg_red;
} else {
    background_index[3] = bg_red_mini;
}
background_x[3] = 0;
background_y[3] = background_y[2] + background_height[2];

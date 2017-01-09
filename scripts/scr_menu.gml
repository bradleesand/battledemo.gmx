switch (mpos)
{
    case 0:
    // attack
        if (CURRENT_CHARGE_BAR.value == CURRENT_CHARGE_BAR.max_value) {
            CURRENT_CHARGE_BAR.value = 0;
            CURRENT_ENEMY.health_value -= 10;
            if CURRENT_ENEMY.health_value < 0 {
                CURRENT_ENEMY.health_value = 0;
            }
        }
    break;
    case 1:
    // abilities
    break;
    case 2:
    // items
    break;
}

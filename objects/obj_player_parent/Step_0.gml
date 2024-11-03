// Movement logic
if (!is_moving) {
    if (keyboard_check(ord(key_movement_up)) && !place_meeting(x, y - tile_size, obj_wall_parent)) {
        target_y = y - tile_size;
        is_moving = true;
    }
    else if (keyboard_check(ord(key_movement_down)) && !place_meeting(x, y + tile_size, obj_wall_parent)) {
        target_y = y + tile_size;
        is_moving = true;
    }
    else if (keyboard_check(ord(key_movement_right)) && !place_meeting(x + tile_size, y, obj_wall_parent)) {
        target_x = x + tile_size;
        is_moving = true;
    }
    else if (keyboard_check(ord(key_movement_left)) && !place_meeting(x - tile_size, y, obj_wall_parent)) {
        target_x = x - tile_size;
        is_moving = true;
    }
    // Bomb placement logic
    else if (keyboard_check_pressed(ord(key_place_bomb))) {
        instance_create_layer(x, y, "Bombs", obj_bomb);
    }
}

// If moving, shift position towards the target tile step-by-step
if (is_moving) {
    if (x < target_x) x = min(x + move_speed, target_x);
    if (x > target_x) x = max(x - move_speed, target_x);
    if (y < target_y) y = min(y + move_speed, target_y);
    if (y > target_y) y = max(y - move_speed, target_y);

    // Stop moving when the target tile is reached
    if (x == target_x && y == target_y) {
        is_moving = false;
    }
}
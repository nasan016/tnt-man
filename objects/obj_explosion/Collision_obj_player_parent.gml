if (!global.point_awarded) {
    global.point_awarded = true; // Set the flag to prevent multiple points

    var hit_player = other; // 'other' refers to the instance that was hit

    // Award a point to the other player and set the alarm to reset
    if (instance_exists(obj_player_1) && instance_exists(obj_player_2)) {
        if (hit_player.id == obj_player_1.id) {
            obj_player_2.points += 1; // Player 2 scores
            show_debug_message("Player 1 hit! Player 2 scores.");
        } else if (hit_player.id == obj_player_2.id) {
            obj_player_1.points += 1; // Player 1 scores
            show_debug_message("Player 2 hit! Player 1 scores.");
        }

        // Set an alarm or timer to reset the game state
		show_debug_message("alarm[1] set to reset game.");
        alarm[1] = 30; // 1-second delay for reset
    }
}
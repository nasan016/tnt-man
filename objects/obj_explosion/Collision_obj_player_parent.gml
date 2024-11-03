/// @description explosion boom another player
var hit_player = other;

// Award a point to the other player based on which one was hit
if (instance_exists(obj_player_1) && instance_exists(obj_player_2)) {
    if (hit_player.id == obj_player_1.id) {
        obj_player_2.points += 1; // Award a point to Player 2
        show_debug_message("Player 1 hit! Player 2 gets a point.");
    } else if (hit_player.id == obj_player_2.id) {
        obj_player_1.points += 1; // Award a point to Player 1
        show_debug_message("Player 2 hit! Player 1 gets a point.");
    }
}
/// @description Insert description here
// You can write your code in this editor
// Alarm[0] event in obj_explosion
show_debug_message("alarm[1] triggered");
global.point_awarded = false; // Reset the flag

// Reset player positions
with (obj_player_1) {
    x = 480; 
    y = 128; 
}

with (obj_player_2) {
    x = 1120; 
    y = 768; 
}

// Destroy all bombs to clear the board
with (obj_bomb) {
    instance_destroy();
}

// Destroy all active explosions to prevent respawning on them
with (obj_explosion) {
    instance_destroy();
}
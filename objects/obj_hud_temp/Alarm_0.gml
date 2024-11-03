/// @description Insert description here
// You can write your code in this editor
global.point_awarded = false; // Reset the flag

// Reset player positions and other necessary game elements
obj_player_1.x = 100
obj_player_1.y = 100
obj_player_2.x = 0
obj_player_2.y = 0

// Destroy all bombs to clear the board
with (obj_bomb) {
    instance_destroy();
}
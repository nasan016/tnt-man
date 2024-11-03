// Alarm[0] Event: boom boom

var directions = [
    [0, 0],   // Center
    [1, 0],   // Right
    [-1, 0],  // Left
    [0, -1],  // Up
    [0, 1]    // Down
];

// Loop through each direction
for (var i = 0; i < array_length(directions); i++) {
    var dir = directions[i];
    var dx = dir[0];
    var dy = dir[1];

    // Loop through each tile in the direction within range
    for (var j = 1; j <= range; j++) {
        var x_pos = x + (dx * j * tile_size);
        var y_pos = y + (dy * j * tile_size);

        // Create an explosion at the center immediately (for dir [0, 0])
        if (i == 0) {
            instance_create_layer(x, y, "Effects", obj_explosion);
            break;  // No need to check further for the center
        }

        // Check for walls or breakable objects
        var wall = instance_position(x_pos, y_pos, obj_wall);
        var breakable = instance_position(x_pos, y_pos, obj_wall_breakable);

        if (wall != noone) {
            // Stop the explosion if a solid wall is found
            break;
        }

        if (breakable != noone) {
            // Destroy the breakable wall
            with (breakable) {
                instance_destroy();
            }
            break; // Stop further spread after breaking the wall
        }

        // Create an explosion effect at this tile
        instance_create_layer(x_pos, y_pos, "Effects", obj_explosion);
    }
}

// Destroy the bomb itself
instance_destroy();
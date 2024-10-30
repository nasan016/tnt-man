/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord(key_movement_up)) {
	y -= movement_speed
}

if keyboard_check(ord(key_movement_down)) {
	y += movement_speed
}

if keyboard_check(ord(key_movement_right)) {
	x += movement_speed
}

if keyboard_check(ord(key_movement_left)) {
	x -= movement_speed
}
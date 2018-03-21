/// @description Move Player
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
hspd = 0;
vspd = 0;

if (up) {
	vspd -= spd;
	sprite_index = s_player_up
} else if (down) {
	vspd += spd;
	sprite_index = s_player_down
} else {
	vspd = 0;	
}

if (left) {
	hspd -= spd;
	sprite_index = s_player_left
} else if (right) {
	hspd += spd;
	sprite_index = s_player_right
} else {
	hspd = 0;	
}

x += hspd;
y += vspd;

if (down && left) {
	sprite_index = s_player_left_down;
}

if (down && right) {
	sprite_index = s_player_right_down;
}
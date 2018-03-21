/// @description Move Player
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
hspd = 0;
vspd = 0;

if (up) {
	vspd -= spd;
	object_set_sprite(0, s_player_up);
} else if (down) {
	vspd += spd;
	
} else {
	vspd = 0;	
}

if (left) {
	hspd -= spd;
} else if (right) {
	hspd += spd;
} else {
	hspd = 0;	
}

x += hspd;
y += vspd;
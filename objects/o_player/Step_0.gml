/// @description Move Player
var bbox_side;

var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
hspd = 0;
vspd = 0;

// Up and Down Movement
if (up) {
	vspd -= spd;
	sprite_index = s_player_up;
} else if (down) {
	vspd += spd;
	sprite_index = s_player_down;
} else vspd = 0;

// Left and Right movement
if (left) {
	hspd -= spd;
	sprite_index = s_player_left;
} else if (right) {
	hspd += spd;
	sprite_index = s_player_right;
} else hspd = 0;

// Sideways sprites
if (down && left) sprite_index = s_player_left_down;
if (down && right) sprite_index = s_player_right_down;

// Collision direction checks
//Horizontal collision
if (hspd > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hspd,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side+hspd,bbox_bottom) != 0) {
	if (hspd > 0) x = x - (x mod 16) + 15 - (bbox_right - x);
	else x = x - (x mod 16) - (bbox_left - x);
	hspd = 0;
}
x += hspd;

//Vertical collision
if (vspd > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vspd) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vspd) != 0) {
	if (vspd > 0) y = y - (y mod 16) + 15 - (bbox_bottom - y);
	else y = y - (y mod 16) - (bbox_top - y);
	vspd = 0;
}
y += vspd;


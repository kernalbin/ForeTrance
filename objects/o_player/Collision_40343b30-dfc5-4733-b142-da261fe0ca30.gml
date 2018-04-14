var enterHouse = keyboard_check_pressed(ord("E"));

if (enterHouse) {
	room_goto(r_house);
}	
hspd = 0;
vspd = 0;			
// Good job, though im wondering if it would be better for you to check your distance to the door
// Instead of collisions so that you do need to be right at the door
// Just within a few pixels of touching it.
// So instead of in a collision event put it inside
// A new step event, like action checks or something
// - Spencer
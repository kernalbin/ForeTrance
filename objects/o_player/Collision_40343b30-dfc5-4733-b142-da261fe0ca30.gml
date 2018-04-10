var enterHouse = keyboard_check_pressed(ord("E"));

if (enterHouse) {
	room_goto(r_house);
}	
hspd = 0;
vspd = 0;			
// We dont want to have it do this automatically
// Pick a key as an action key for now say e
// Define it as the action key in the create event
// Then check for its press before you run the room_goto(); code
// - Spencer
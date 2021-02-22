/// @description Insert description here
// You can write your code in this editor
randomize()

var clear_x_range = [32, room_width - 32];
var clear_y_range = [32, room_height - 32];

counter = 0;
while (counter != 10) {

	var random_position = random_dot([clear_x_range[0] + 32, clear_x_range[1] - 32],
								 [clear_y_range[0] + 32, clear_y_range[1] - 32]);


	if (get_vector(random_position, [player.x, player.y]) > 200) and (place_empty(random_position[0], random_position[1])) {
	
		instance_create_layer(random_position[0], random_position[1], "Instances", pterodactylys);
		break
	
	}
							 
	counter += 1;
	
}
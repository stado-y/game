//

pos = [x, y];


if (direction < 90) or (direction > 270) {

	image_xscale = 1;

} else {

	image_xscale = -1;

}



if (alarm_get(11) == -1) {
	


	alarm_set(11, 30);

}


//if (alarm_get(10) == -1) {

//	alarm_set(10, 1)


//}



//if variable_instance_exists(id, "_mypath") {

//	path_x = path_get_x(_mypath, 1)
//	path_y = path_get_y(_mypath, 1)
//	number = path_get_number(_mypath)
//	path_xx = path_get_point_x(_mypath, number)
//	path_yy = path_get_point_y(_mypath, number)

//}


//if (variable_instance_exists(id, "_mypath")) {

//	path_delete(_mypath)

//}



//var _node_list = node_radius(id, 0)

//var _mypath = dijkstra(_node_list);
//ds_list_destroy(_node_list);

//path_start(_mypath, 1, path_action_stop, true)
//path_set_kind(_mypath, 0)
//path_set_precision(_mypath, 0)

//with (node) {
	
//	node_value = 999
//}







//if (alarm_get(11) == -1) {

//	alarm_set(11, 12)

//}



//normalized_vector = vector_normalize(pos, player_pos);
//normalized_speed = speed_from_vector(normalized_vector, global.walksp);


//steps_to_check = 20; // На сколько шагов вперед обнаружать препятствия

// Проверка не находится ли игрок ближе заданной величины обнаружения препятствий
//destination_for_check = [x + (normalized_speed[0] * steps_to_check), y + normalized_speed[1] * steps_to_check];

//if (get_vector(pos, destination_for_check) > get_vector(pos, player_pos)) {
	
//	steps_to_check = (x - player.x) / normalized_speed[0];
//}
	

//var obstacle_check = vector_obstacle_check(pos, normalized_speed, steps_to_check);

//if obstacle_check != false {

//		enemy_routing(obstacle_check);
	
//	}
	

//}






//var _nearest_node_pos = find_nearest_node(pos)

//var _normal_vector = vector_normalize(pos, _nearest_node_pos)

//var _speed_vect = speed_from_vector(_normal_vector, global.walksp)

//hspeed = _speed_vect[0]
//vspeed = _speed_vect[1]




		//_sorted_path = find_path(pos);

		//path_start(_sorted_path, global.walksp * 0.8, path_action_stop, false);







//if obstacle_check == false{
//	hspeed = normalized_speed[0];
//	vspeed = normalized_speed[1];
//} else {
//	hspeed = 0;
//	vspeed = 0;
//}
//if obstacle_check {
	
//}



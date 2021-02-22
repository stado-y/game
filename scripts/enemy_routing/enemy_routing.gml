// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_routing(obstacle_position){

	var _obs_id = instance_position(obstacle_position[0], obstacle_position[1], enemy);
	
	if _obs_id != noone {
	
		var _obj_position = [_obs_id.x, _obs_id.y];
		
		var _vector = vector_normalize([x, y], _obj_position);
		
		if (sign(_vector[0]) * _vector[0]) > (sign(_vector[1]) * _vector[1]) {
		
			if sign(_vector[0]) == 1 { // енеми справа от препятствия
			
			
			
			}
		
		}
		
		
		
		
		
	
	}



}
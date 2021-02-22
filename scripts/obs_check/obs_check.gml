// Обнаружение препятствий по номализованому вектору и скорости
// steps = количество шагов для просчета
function obs_check(argument0, argument1){
	
	var _node_pos = argument0;
	var _enemy_pos = argument1;
	
	var _nor_vec = vector_normalize(_node_pos, _enemy_pos);
	var _nor_speed = speed_from_vector(_nor_vec, 3);
	
	var _steps = (_node_pos[0] - _enemy_pos[0]) / _nor_speed[0];
	_steps = sign(_steps) * _steps
	
	while _steps > 0 {
		
		pos[0] += _nor_speed[0];
		pos[1] += _nor_speed[1];
		
		var _obstacle = place_empty(pos[0], pos[1], blocks);

		_steps -= 1;
		
		if _obstacle == false {
			
			return true
			
			break
			
		}
		
	}

	return false
}
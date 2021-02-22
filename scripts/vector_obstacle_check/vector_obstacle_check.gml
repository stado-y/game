// Обнаружение препятствий по номализованому вектору и скорости
// steps = количество шагов для просчета
function vector_obstacle_check(pos, normalized_speed, steps){
	
	
	while steps > 0 {
		
		pos[0] += normalized_speed[0];
		pos[1] += normalized_speed[1];
		
		obstacle = place_empty(pos[0], pos[1], blocks);

		steps -= 1;
		
		if obstacle == false {
			
			return pos
			
			break
			
		}
		
	}

	return false
}
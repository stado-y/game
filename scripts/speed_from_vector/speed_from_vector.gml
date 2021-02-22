// Вычисляем x и y скорость по нормализованому вектору и макс. скорости
function speed_from_vector(normalized_vector, walk_speed){
	
	var x_speed = normalized_vector[0]*(walk_speed);
	var y_speed = normalized_vector[1]*(walk_speed);
	
	var normalized_speed = [x_speed * 0.8, y_speed * 0.8];
	
	return normalized_speed
	
}
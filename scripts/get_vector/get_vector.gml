// обычный вектор для определения расстояния
function get_vector(start_pos, end_pos){
	var vx = start_pos[0] - end_pos[0];
	var vy = start_pos[1] - end_pos[1];
	var len = sqrt(sqr(vx) + sqr(vy));
	return len
}
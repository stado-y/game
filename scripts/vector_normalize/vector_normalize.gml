// Нормализуем вектор для вычисления скорости и обнаружения препятствий
function vector_normalize(start_pos, end_pos){
	
	var vx = start_pos[0] - end_pos[0];
	var vy = start_pos[1] - end_pos[1];
	
	var len = sqrt(sqr(vx) + sqr(vy));
	
	var vx_normalized = vx / len;
	var vy_normalized = vy / len;
	
	var vx_normalized = sign(vx_normalized) * vx_normalized; // на случай, если vx был с минусом
	var vy_normalized = sign(vy_normalized) * vy_normalized;
	
	if start_pos[0] > end_pos[0] {vx_normalized = -vx_normalized}; // а теперь ставим минус там, где это надо
	if start_pos[1] > end_pos[1] {vy_normalized = -vy_normalized};
	
	var vector_normalized = [vx_normalized, vy_normalized];
	
	return vector_normalized
}
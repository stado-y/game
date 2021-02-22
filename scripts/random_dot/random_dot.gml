// Вычисляем рандомное число для спавна врага
function random_dot(range_x, range_y){
	
	 var _random_x = irandom_range(range_x[0], range_x[1]);
	 var _random_y = irandom_range(range_y[0], range_y[1]);
	 
	 var _random_dots = [_random_x, _random_y];
	 
	 return _random_dots
	
}
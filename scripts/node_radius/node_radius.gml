// ищет ближайших нодов, формирует список и выставляет вес графа
function node_radius(argument0, argument1){
	
	var _current = argument0; // текущий нод
	
	var _value = argument1; // его вес
	
	var _distance = 32;
	
	
	var _near_list = ds_list_create();
	
	var _dot = [_current.x - _distance, _current.y]; // проверка слева
	
	for (var i = 0; i < 8; ++i) {
		
		var _inst = instance_place(_dot[0], _dot[1], node);
		
		if (_inst != noone) {
		
			ds_list_add(_near_list, _inst);
			
			if (i < 4) and (_inst.node_value > _value + 1) { // если вес графа больше
			
				_inst.node_value = _value + 1; // обычный вес
			
			}
				
			if  (i > 3) and (_inst.node_value > _value + 1.42) { // по диагонали дороже
			
				_inst.node_value = _value + 1.42; // вес по диагонали
			}
		
		}
	
		if (i == 0) {_dot[@ 0] = _current.x + _distance};										// справа
		
		if (i == 1) {_dot[@ 0] = _current.x; _dot[@ 1] = _current.y - _distance};				// сверху
		
		if (i == 2) {_dot[@ 1] = _current.y + _distance};									   // снизу
		
		if (i == 3) {_dot[@ 0] = _current.x + _distance; _dot[@ 1] = _current.y - _distance}; // право + верх
		
		if (i == 4) {_dot[@ 1] = _current.y + _distance};									  // право + низ
		
		if (i == 5) {_dot[@ 0] = _current.x - _distance; _dot[@ 1] = _current.y + _distance}; // лево+низ
		
		if (i == 6) {_dot[@ 1] = _current.y - _distance};									  // лево+верх
		
	}
	
	return _near_list

}
		

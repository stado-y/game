// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dijkstra_v2(argument0){
	
	var _nearest_node = argument0; // первый нод для сравнения
	
	_nearest_node.node_value = 0;
	
	var _nearest_nodes_list = node_radius(_nearest_node.id, _nearest_node.node_value); // список ближайших

	var _all_nodes_list = ds_list_create(); // список всех нодов для проверки
	ds_list_copy(_all_nodes_list, global.all_nodes);
	
	var _used_nodes_list = ds_list_create(); // список использованных
	
	ds_list_add(_used_nodes_list, _nearest_node.id);
	
	var _node_id = ds_list_find_index(_all_nodes_list, _nearest_node.id);
	
	ds_list_delete(_all_nodes_list, _node_id);

	var _best_nearest_value = 999;
	
	while (!ds_list_empty(_all_nodes_list)) {
		
		for (i = 0; (i < ds_list_size(_all_nodes_list)); ++i) {
			
			var _current_node = ds_list_find_value(_all_nodes_list, i)
						
			if (ds_list_find_index(_used_nodes_list, _current_node.id) == -1) and (_current_node.node_value < _best_nearest_value) {
							
				_best_nearest_value = _current_node.node_value;
				_nearest_node = _current_node.id;
			}

		}
		
		if (_best_nearest_value == 999) { // если нет больше связей (остались изолированные ноды)
						
			ds_list_clear(_all_nodes_list);
							
			break
			
		}
		

		
		
		ds_list_add(_used_nodes_list, _nearest_node.id); // добавляем в список использованных

		var _node_id = ds_list_find_index(_all_nodes_list, _nearest_node.id); // получаем позицию
		
		//if (_node_id != -1) {
		
		ds_list_delete(_all_nodes_list, _node_id); // удаляем из списка всех нодов
		
		//}
		
		_best_nearest_value = 999;
		
		ds_list_destroy(_nearest_nodes_list);
		
		var _nearest_nodes_list = node_radius(_nearest_node.id, _nearest_node.node_value);
		
		
	
	}
	
	// теперь находим кратчайший путь
	
	var _path = path_add() // можно попробовать queue
	
	//var _path = ds_stack_create()
	
	ds_list_destroy(_nearest_nodes_list);
	
	path_add_point(_path, player.x, player.y, 100);
	
	//ds_stack_push(_path, [player.x, player.y])
	
	
	_used_nodes_list = ds_list_create();
	
	with (player) {
	
		_nearest_node = instance_nearest(x, y, node)
	
	}
	
	
	
	_nearest_nodes_list = node_radius(_nearest_node, 999)
	
	while (_nearest_node.node_value > 0) { // пока вес графа больше 2 
	
		for (var i = 0; i < ds_list_size(_nearest_nodes_list); ++i) { // для каждого соседнего нода
		
			_current_node = ds_list_find_value(_nearest_nodes_list, i);
			
			if (ds_list_find_index(_used_nodes_list, _current_node.id) == -1) { // если нет в списке использованных
			
				if (_current_node.node_value < _nearest_node.node_value) { // если вес графа меньше
			
					_nearest_node = _current_node;
				
				} else {
					
					continue
					
				}
			
			} else {
			
				continue
			
			}
			

			
		} // кончается 2й for
		
		path_insert_point(_path, 0, _nearest_node.x, _nearest_node.y, 100);
		
		//ds_stack_push(_path, [_nearest_node.x, _nearest_node.y])
		
		ds_list_add(_used_nodes_list, _nearest_node.id);
		
		ds_list_destroy(_nearest_nodes_list);
		
		_nearest_nodes_list = node_radius(_nearest_node, 999)
		
		//with (_nearest_node) {
		
		//	collision_circle_list(_nearest_node.x, _nearest_node.y, 45, node, false, true, _nearest_nodes_list, false);
		
		//}
		
		//_nearest_nodes_list = node_radius(_nearest_node, _nearest_node.node_value)
	
	} // конец 2го while

	
	ds_list_destroy(_used_nodes_list);
	ds_list_destroy(_nearest_nodes_list);
	
	return _path;
	
	

}
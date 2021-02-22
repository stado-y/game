// просчет пути до героя
function dijkstra(argument0){
	
	var _nearest_node = argument0; // первый нод для сравнения
	
	_nearest_node.node_value = 0;
	
	var _nearest_nodes_list = node_radius(_nearest_node.id, _nearest_node.node_value); // список ближайших

	var _all_nodes_list = ds_list_create(); // список всех нодов для проверки
	ds_list_copy(_all_nodes_list, global.all_nodes);
	
	var _used_nodes_list = ds_list_create(); // список использованных

	var _best_nearest_value = 999;
	
	while (!ds_list_empty(_all_nodes_list)) {
	
		for (var i = 0; i < ds_list_size(_nearest_nodes_list); ++i) { // для каждого соседнего нода
	
			var _current_node = ds_list_find_value(_nearest_nodes_list, i);
		
			if (ds_list_find_index(_used_nodes_list, _current_node.id) != -1) { // если нод есть в списке использованных
		      
				if (i == (ds_list_size(_nearest_nodes_list) -1)) { // если это последняя итерация по списку ближайших нодов
					  
					var _used = 0;
					  
					for (var o = 0; o < ds_list_size(_nearest_nodes_list); ++o) { // для всех в списке ближайших проверить использованы ли они
							
						var _inst = ds_list_find_value(_nearest_nodes_list, o); // переменная пля проверки количества использованных в списке
					  
						if (ds_list_find_index(_used_nodes_list, _inst.id) != -1){ //если использован, увеличиваем количество на 1
							
							_used += 1;
							
						} else {
							
							break
							
						}
							
					}
					  
					if (_used == ds_list_size(_nearest_nodes_list)) { // если все ближайшие использованы

						for (var j = 0; j < ds_list_size(_all_nodes_list); ++j) { // для каждого нода в списке оставшихся (all)
						
							var _next_iter_node = ds_list_find_value(_all_nodes_list, j);
							
							if (_next_iter_node.node_value < _best_nearest_value) { // если вес графа меньше
									
									
								_best_nearest_value = _next_iter_node.node_value
							
								_nearest_node = _next_iter_node;
					
								break;
									
							}
								
						}
							
					

					}
				
				}
			  
			  
			  } else { // если нода нет в списке использованных
		  
				if (_current_node.node_value < _best_nearest_value) {
				
					_best_nearest_value = _current_node.node_value;
					
					_nearest_node = _current_node;
						
					}
				
				}
		
		} // кончается главный for
		
		ds_list_add(_used_nodes_list, _nearest_node.id); // добавляем в список использованных
		
		
		
		var _node_id = ds_list_find_index(_all_nodes_list, _nearest_node.id); // получаем позицию
		
		if (_node_id != -1) {
		
			ds_list_delete(_all_nodes_list, _node_id); // удаляем из списка всех нодов
		
		}
		
		_best_nearest_value = 999;
		
		ds_list_destroy(_nearest_nodes_list);
		
		var _nearest_nodes_list = node_radius(_nearest_node.id, _nearest_node.node_value);
		
		
	} // кончается главный while

	
	ds_list_destroy(_all_nodes_list);
	ds_list_destroy(_used_nodes_list);
	
	// теперь находим кратчайший путь
	
	var _path = path_add() // можно попробовать queue
	
	ds_list_destroy(_nearest_nodes_list);
	
	path_add_point(_path, player.x, player.y, 100);
	
	_nearest_nodes_list = ds_list_create();
	
	_used_nodes_list = ds_list_create();
	
	with (player) {
	
		collision_circle_list(x, y, 32, node, false, true, _nearest_nodes_list, false);
	
	}
	
	_nearest_node = ds_list_find_value(_nearest_nodes_list, 0);
	
	while (_nearest_node.node_value > 1) { // пока вес графа больше 2 
	
		for (var i = 0; i < ds_list_size(_nearest_nodes_list); ++i) { // для каждого соседнего нода
		
			_current_node = ds_list_find_value(_nearest_nodes_list, i);
			
			if (ds_list_find_index(_used_nodes_list, _current_node.id) == -1) { // если нет в списке использованных
			
				if (_current_node.node_value < _nearest_node.node_value) { // если вес графа меньше
			
					_nearest_node = _current_node;
				
				}
			
			}
			

			
		} // кончается 2й for
		
		path_insert_point(_path, 0, _nearest_node.x, _nearest_node.y, 100);
		
		ds_list_add(_used_nodes_list, _nearest_node);
		
		ds_list_destroy(_nearest_nodes_list);
		
		_nearest_nodes_list = ds_list_create();
		
		with (_nearest_node) {
		
			collision_circle_list(_nearest_node.x, _nearest_node.y, 45, node, false, true, _nearest_nodes_list, false);
		
		}
		
		//_nearest_nodes_list = node_radius(_nearest_node, _nearest_node.node_value)
	
	} // конец 2го while

	
	ds_list_destroy(_used_nodes_list);
	ds_list_destroy(_nearest_nodes_list);
	
	return _path;
	
}
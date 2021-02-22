//находит ближайший к игроку обьект node в радиусе
function find_path(pos){
	
	var _path = path_add();
	
	var _nearest_nodes = ds_list_create();

	
	var _path_list = ds_list_create();
	var _used_nodes = ds_list_create();
	
	
	var _distance_to_player = 100;


		
		
		

	
		var _nearest_nodes = node_radius(pterodactylys);
		
		nearest_node = ds_list_find_value(_nearest_nodes, 0);
		
		while _distance_to_player > 64 {
		
			for (i = 0; i < ds_list_size(_nearest_nodes); ++i) {
			
				var _current_node = ds_list_find_value(_nearest_nodes, i);
				
				if ds_list_find_index(_used_nodes, _current_node.id) != -1 {
					
					
					
		
					
				}else {
					
					var _current_pos = get_vector([_current_node.x, _current_node.y], [player.x, player.y]);
					var _nearest_pos = get_vector([nearest_node.x, nearest_node.y], [player.x, player.y]);
				
					if _current_pos < _nearest_pos {
					
						nearest_node = _current_node;
						
					   }
					}
				
				
			
			}
			
				
					
				ds_list_destroy(_nearest_nodes);
					
				var _nearest_nodes = ds_list_create();
					
				_nearest_nodes = node_radius(nearest_node);
					
					
				
				
			
				_distance_to_player = get_vector([nearest_node.x, nearest_node.y], [player.x, player.y]);
				
				
				ds_list_add(_path_list, nearest_node);
				
				ds_list_add(_used_nodes, nearest_node);
		
		}
		
		
	var _new_path = path_add()
	
	path_add_point(_new_path, pos[0], pos[1], 100);
	
	for (i = 0; i < ds_list_size(_path_list); ++i) {
		
		var _listed_node = ds_list_find_value(_path_list, i);
	
		path_add_point(_new_path, _listed_node.x, _listed_node.y, 100);
		
	
	}
	
	if path_get_number == 0 {
	
		_path = _new_path
	
	}else {
	
		if path_get_number(_path) > path_get_number(_new_path) {
	
			path_clear_points(_path)
			_path = _new_path
	
	}
	
	}
	
	
	
	


	

		
		return _path
	

	
}
	


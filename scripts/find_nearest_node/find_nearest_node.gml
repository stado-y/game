//находит ближайший к игроку обьект node в заданном радиусе
function find_nearest_node(pos){
	var _nearest_nodes = ds_list_create()
	with (node) {
	
		if distance_to_object(enemy) <= 64 {
			
				if distance_to_object(blocks) > 1 {
		
					ds_list_add(_nearest_nodes, id)
		
				}
		}
		
	}
	
	var _least_len = ds_list_find_value(_nearest_nodes, 0)
	
	for (i = 0; i < ds_list_size(_nearest_nodes); ++i) {
		
		
	
		var _current_node = ds_list_find_value(_nearest_nodes, i)
		
		if (_current_node.distance_to_player < _least_len.distance_to_player) {
			
			
				//if (obs_check([_current_node.x, _current_node.y], [pterodactylys.x, pterodactylys.y])) {
		
					_least_len = _current_node
		
				//}
				
				
		}
	
	}
	return [_least_len.x, _least_len.y]
}

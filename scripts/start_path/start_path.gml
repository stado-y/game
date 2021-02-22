// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_path(){
	
	var _nearest = node_radius(id, 0);
	global._my_path = dijkstra(_nearest);
	ds_list_destroy(_nearest);

	path_start(global._my_path, (global.walksp * 0.8), path_action_stop, false)
	
}
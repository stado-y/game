/// @description Insert description here
// You can write your code in this editor

with (node) {
	
	node_value = 999;
}

if (variable_instance_exists(id, "_mypath")) {
	

	path_delete(_mypath);

}

var _node = instance_nearest(x, y, node);

_mypath = dijkstra(_node);

path_set_closed(_mypath, false);


path_start(_mypath, global.walksp * 0.8, path_action_stop, true);




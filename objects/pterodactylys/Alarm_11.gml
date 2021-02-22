/// @description Insert description here
// You can write your code in this editor
path_end();
if (variable_instance_exists(id, "_mypath")) {
	
	path_delete(_mypath);

}

var _node = instance_nearest(x, y, node);

var _mypath = dijkstra(_node);

path_insert_point(_mypath, 0, x, y, 100);

path_start(_mypath, global.walksp * 0.8, path_action_stop, true);

with (node) {
	
	node_value = 999;
}

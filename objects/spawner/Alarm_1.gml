/// coin spawn


var _platform_list = ds_list_create();

with (platform) {

	if (distance_to_object(player) > 200) {
	
	ds_list_add(_platform_list, id); // список подходящих платформ
	
	}
}

var i = irandom((ds_list_size(_platform_list) - 1));

var _platform = ds_list_find_value(_platform_list, i);

if (ds_list_empty(_platform_list)) { // если список пуст, монетка появится на земле

	i = irandom_range(32, 960);
	
	instance_create_layer(i, 544, "Instances", coin);

} else {

	instance_create_layer(_platform.x - 64, _platform.y - 8, "Instances", coin);

}

ds_list_destroy(_platform_list);



















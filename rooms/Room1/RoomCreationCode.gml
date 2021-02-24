randomize();


layer_set_visible("nodes", false);

// Создаем границы
var pixels = 16;
while (pixels < room_width) {
	
	instance_create_layer(pixels, 16,"Instances", bounds);
	instance_create_layer(pixels, 560,"Instances", bounds);
	
	if (pixels >= 48 and pixels < room_height) {
	
		instance_create_layer(16, pixels,"Instances", bounds);
		instance_create_layer(1008, pixels, "Instances", bounds);
	
	}
	
	
	pixels += 32;

}




// Свободное место на экране : 960х512 (x : 32-992; y : 32-542)



// рандомное расположение платформ (128х16)

var _random_width = irandom_range(96, 928);

instance_create_layer(_random_width, 400, "instances", platform);

with (platform) {

	var i =  irandom_range(1, 2);
	
	var _level = 400; // высота фиксированная
	
	var _count = 0
	
	while (i != 0) {

		var _random_width = irandom_range(96, 928);
		
		if (!place_meeting(_random_width, _level, blocks)) {
		
			instance_create_layer(_random_width, _level, "instances", platform);
			
			i -= 1;
		
		}
			
		if (i == 0) and (_level == 400) {
			
			i = irandom_range(1, 3);
				
			_level = 272; // высота для второго уровня

		}
		
		_count += 1;
		
		if (_count == 15) {break};

	}

}



// рандомные стены (8х64)
with (platform) {

	i = irandom(1);
	var _y = 0;
	
	if (i == 0) {_y = -40};
	if (i == 1) {_y = 40};
	
	instance_create_layer(x, y + _y, "Instances", wall);

}





////создаем обьекты для просчета путей
//instance_create_layer(1,1, "Instances", node_master);
r_width = 976 // ширина комнаты -48 пикселей (32 это ширина блока, 16 - половина ширины обьекта)
r_height = 528

for (i = 48; i <= r_width; i += 32) {

	for (j = 48; j <= r_height; j += 32) {
		
		if place_empty(i, j, blocks) {
		
			instance_create_layer(i, j,"nodes", node);
		
		
		}
	
	
	}


}

// Список всех нодов для просчета путей
global.all_nodes = ds_list_create();


global.used_nodes = ds_list_create();

with (node) {
		
	if distance_to_object(blocks) < 4 {
		
		instance_destroy(id, true)
	
		
	} else {
	
		ds_list_add(global.all_nodes, id);
	
	}

}

// обьект, контролирующий респавн
instance_create_layer(1, 1, "background", spawner);

// Создаем игрока
instance_create_layer(48,528, "Instances", player);





















 
 


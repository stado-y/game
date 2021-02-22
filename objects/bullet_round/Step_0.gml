// Проверка на колизию

// Если попадает в стену - уничтожается
if position_meeting(x, y, blocks) {

	instance_destroy();

}


// если попадает во врага, убивает его, и уничтожается
if position_meeting(x, y, enemy) {

	var enemy_id = instance_place(x, y, enemy);
	
	if (enemy_id != noone) {
	
		instance_destroy(enemy_id);
	
	}
	
	instance_destroy();

}
/// респаун через 5 секунд, после 10 монеток - рестарт игры

with (spawner) {

	alarm_set(1, (5 * 60));
	
	coin_counter += 1;
	
	if (coin_counter > 9) {
	
		game_restart();
	
	}

}
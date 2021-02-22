/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A")); // управление
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

if (mouse_check_button(mb_left)){ // стрельба

	instance_create_layer(x, y, "Instances", bullet_round);

}

if (key_right) {image_xscale = 1}; // поворот спрайта
if (key_left) {image_xscale = -1};

if place_meeting(x, y + 1, blocks) and (key_jump) {
	
	vsp = -10;

}

var move = key_right - key_left; // технические переменные для управления

hsp = move * global.walksp;

vsp = vsp + grv;


if (place_meeting(x + hsp, y, blocks)) { // горизонтальная коллизия
	
	while(!place_meeting(x + sign(hsp), y, blocks)) {
		
		x = x + sign(hsp);
		
	}
	
	hsp = 0;
}

x = x + hsp;


if (place_meeting(x, y + vsp, blocks)) { // вертикальная

	while(!place_meeting(x, y + sign(vsp), blocks)) {
	
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;



//key_up = keyboard_check(ord("W")); //свободное перемещение для тестов (отключить гравитацию)
//key_down = keyboard_check(ord("S"));
//var fly = key_down - key_up;
//vsp = fly * (global.walksp + 2);
//y = y + vsp;














/// @description Insert description here
// You can write your code in this editor
object_set_solid(bullet_round, true);

object_set_sprite(bullet_round, bullet_round_sprite);

image_xscale = 0.5;
image_yscale = 0.5;

direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-5, 5);
speed = 10;
image_angle = direction;
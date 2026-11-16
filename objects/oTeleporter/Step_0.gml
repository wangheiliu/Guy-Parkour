var instance = instance_nearest(oPlayer.x, oPlayer.y, oTeleporter)
if (instance == noone) {
	show_debug_message("No door in level")
	return;
}
instance.image_speed = 0;

if (point_distance(oPlayer.x, oPlayer.y, instance.x, instance.y) < 15) {
	show_debug_message("Player is near door")
	instance.image_index = 1
} else {
	instance.image_index = 0
}

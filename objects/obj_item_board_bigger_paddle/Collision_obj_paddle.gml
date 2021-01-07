///// obj_item_bigger_paddle

instance_destroy();
audio_play_sound(snd_power_up, 99, false);
with (obj_paddle)
{
	image_xscale = 1.5;
}
instance_create_layer(280, 21, "Instances", obj_item_bigger_paddle)
alarm[0] = 2 * room_speed;
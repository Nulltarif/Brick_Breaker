///// obj_item_bigger_paddle
instance_destroy();															// Objekt wird zerstört.
audio_play_sound(snd_power_up, 99, false);									// Power Up Sound wird gespielt.

with (obj_paddle)															// obj_paddle wird angeseteuert.
{
	image_xscale = 0.5;														// obj_paddle Größe wird aud 0.5 gestellt.
	alarm[0] = 10 * room_speed;												// Alarm 0 wird im obj_paddle gestellt.
}

with (obj_game_control)														// obj_game_control wird angesteuert.
{
	if (free_score_place = false)											// Wenn free_score_place false ist, ...
	{
		position_destroy(280, 31);											// ... wird das Objekt auf diesem Platz zerstört.
	}
}

instance_create_layer(280, 31, "Instances", obj_item_board_smaller_paddle)	// obj_item_board_smaller_paddle wird erstellt.
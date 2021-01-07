///// obj_parent_brick: Collision obj_ball
instance_destroy();															// Objekt wird zerstört.
audio_play_sound(snd_hit_brick, 100, 0);

if (irandom(9) == 1)														// Eine Zufällige Zahl zwischen 0 und 9 wird erstellt. Wenn diese 1 ist, dann ...
{
	random_item_number = irandom_range(1, 2);								// ... wird zufällig entschieden welchen Item spawnt.
	if (random_item_number = 1)
	{
		instance_create_layer(x, y, "Instances", obj_item_bigger_paddle);	// Item bigger_paddle wird an den Brick Koordinaten gespawnt.
	}
	if (random_item_number = 2)
	{
		instance_create_layer(x, y, "Instances", obj_item_smaller_paddle);	// Item smaller_paddle wird an den Brick Koordinaten gespawnt.
	}
}

global.player_score += 10;													// Punktzahl wird um 10 erhöht.
global.overall_player_score += 10;											// Gesamtpunktzahl wird um 10 erhöht.
obj_game_control.brick_counter += 1;										// Brick Counter wird um 1 erhöht.

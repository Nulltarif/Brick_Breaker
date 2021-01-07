///// obj_ball: Step
////  1.0. Kollision mit Wänden:
if (x <= 11 || x >= 489)
{
	hspeed = -hspeed;									// hspeed wird negativ.
	audio_play_sound(snd_hit_wall, 100, 0)
}

////  2.0. Kollision mit Decke:
if (y <= 75)
{
	vspeed = -vspeed;									// vspeed wird negativ.
	audio_play_sound(snd_hit_wall, 100, 0)
}

////  3.0. "Kollision" mit Boden:
if (y > 761)
{
	global.player_lives -= 1;
	instance_destroy(obj_ball);
	instance_create_layer(xstart, ystart, "instances", obj_ball)	// Neuer Ball wird erstellt an den alten Koordinaten mit einer neuen Instanz.
}

////  4.0. Ball bewegt sich auf der X Achse mit dem Paddle
if (start_ball = false)									// Wenn der Ball nicht abgeschossen wurde, ...
{
	x = obj_paddle.x									// ... bewegt er sich auf der X-Achse des Paddles.
}
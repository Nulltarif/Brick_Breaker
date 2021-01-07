///// obj_game_control: Step
////  1.0. Steuerung des Paddels:
///   1.1. Geschwindigkeit des Paddels:
paddle_speed = 9;

///   1.2. Paddle Bewegung nach Rechts:
if (keyboard_check(vk_right))
{
	obj_paddle.x += paddle_speed;
}

///   1.3. Paddle Bewegung nach Links:
if (keyboard_check(vk_left))
{
	obj_paddle.x += -paddle_speed;
}

////  2.0. Neustart des Spiels:
if (keyboard_check_pressed(vk_enter))
{
	game_restart();
}

////  3.0. Eingrenzung der Bewegung des Paddels:
obj_paddle.x = clamp(obj_paddle.x, 37.5, 462.5);

////  4.0. Spielende:
///   4.1. Spielende durch Game Over:
if (global.player_lives = 0)
{
	room_goto(roo_game_over);
}

///   4.2. Spielende durch Level beenden:
if (brick_counter = 30)
{
	room_goto(roo_level2);
}
///// obj_ball: Key Press - Space
////  1.0. Ballstart:
if (start_ball = false)									// Der Befehl kann nur ausgeführt werden, wenn "start_ball" auf false ist.	
{
	direction = random_range(45, 135)					// Ball bekommt eine Richtung zwischen 45-135°.
	speed = ball_speed;									// Die Ballgeschwindgkeit wird auf 8 gestellt.
	start_ball = true;									// Variable "start_ball" wird auf true geschaltet um nicht mehr ausgelöst zu werden.
}
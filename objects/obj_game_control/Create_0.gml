///// obj_game_control: Create
////  1.0. Punktzahl:
global.player_score = 0;

////  2.0. Gesamtpunktzahl:
global.overall_player_score = 0;

////  2.0. Leben:
global.player_lives = 3;

////  3.0. Counter für das Level damit es beendet wird:
brick_counter = 0;

////  4.0. Musik Untermalung:
audio_play_sound(snd_music1, 90, true);

////  5.0. Variable für das Item Bild im Score Board wird auf true gestellt:
free_score_place = true;
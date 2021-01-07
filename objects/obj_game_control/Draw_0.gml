///// obj_game_score: Draw
draw_set_font(fon_ingame_score);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_text(16, 21, "LEVEL SCORE: " + string(global.player_score));

draw_set_halign(fa_left);
draw_text(318, 21, "OVERALL SCORE: " + string(global.overall_player_score));

draw_set_halign(fa_left);
draw_text(180, 21, "LIVES: " + string(global.player_lives));

draw_set_halign(fa_center);
draw_text(room_width / 2, 720, "LEVEL 1");
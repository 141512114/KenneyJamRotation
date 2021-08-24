/// @description Draw the gui

draw_set_color(c_maroon);
draw_set_alpha(1);

draw_text(10, 10, "Coins: " + string(coins));
draw_text(10, 30, "Keys: " + string(key));
with(o_player){draw_text(10, 50, "Alarm 0: " + string(alarm_get(0)));}
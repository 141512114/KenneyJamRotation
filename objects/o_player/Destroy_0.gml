/// @description Create death animation

var death_anim = instance_create_layer(x, y, "General", o_player_death);
death_anim.image_index = image_index;
death_anim.img_xscale_invert = img_xscale_invert;
with(death_anim){alarm_set(0, 30);}
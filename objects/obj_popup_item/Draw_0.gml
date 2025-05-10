if (!is_struct(item)) exit;
  
draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_sprite(spr_key, 0, x, y);
draw_text(x, y + 64, item.display_serial);
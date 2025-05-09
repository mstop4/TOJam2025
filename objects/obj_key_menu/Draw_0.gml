var _num_items = array_length(obj_game_controller.all_items);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (_num_items == 1) {
  draw_sprite(spr_key, 0, guides.center_x, guides.center_y);
  draw_text(guides.center_x, guides.center_y, obj_game_controller.all_items[0].display_serial);
} else if (_num_items == 3) {
  for (var _i=0; _i<3; _i++) {
    draw_sprite(spr_key, 0, guides.column_x[_i], guides.center_y);
    draw_text(guides.column_x[_i], guides.center_y, obj_game_controller.all_items[_i].display_serial);
  }
} else {
  var _cur_page_start = current_page * 6;
  
  for (var _j=0; _j<2; _j++) {
    for (var _i=0; _i<3; _i++) {
      var _cur_index = _cur_page_start + _j*3 + _i;
      
      if (_cur_index < _num_items) {
        draw_sprite(spr_key, 0, guides.column_x[_i], guides.row_y[_j]);
        draw_text(guides.column_x[_i], guides.row_y[_j], obj_game_controller.all_items[_cur_index].display_serial);
      }
    }
  }
}

draw_rectangle(bounds.left, bounds.top, bounds.right, bounds.bottom, true);


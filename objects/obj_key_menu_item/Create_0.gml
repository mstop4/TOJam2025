event_inherited();

function draw_item() {
  draw_set_colour(c_white);
  
  draw_sprite(spr_key, 0, x, y);
  
  if (item.type == "key" && item.encryption_tag_serial != "") {
    draw_set_colour(c_aqua);
  }
  
  draw_text(x, y, item.display_serial);
  
  if (is_hovered) {
    draw_set_colour(c_lime);
  } else {
    draw_set_colour(c_white);
  }
  
  draw_rectangle(
    x - click_zone_half_size,
    y - click_zone_half_size,
    x + click_zone_half_size,
    y + click_zone_half_size,
    true
  );
}

function on_hover_enter() {
  show_debug_message("Hover enter");
}

function on_hover_exit() {
  show_debug_message("Hover exit");
}

function on_click() {
  if (obj_game_controller.game_state == GAME_STATE.CHOOSE_KEY) {
    obj_game_controller.game_state = GAME_STATE.VIEW_KEY;
    instance_activate_object(obj_game_controller.popup_item);
    obj_game_controller.popup_item.item = item;
  }
}
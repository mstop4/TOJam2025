if (obj_game_controller.game_state == GAME_STATE.CHOOSE_KEY && is_hovered) {
  obj_game_controller.game_state = GAME_STATE.VIEW_KEY;
  instance_activate_object(obj_game_controller.popup_item);
  obj_game_controller.popup_item.item = item;
}

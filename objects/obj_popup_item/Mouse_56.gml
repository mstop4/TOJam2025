if (obj_game_controller.game_state == GAME_STATE.VIEW_KEY) {
  obj_game_controller.game_state = GAME_STATE.CHOOSE_KEY;
  instance_deactivate_object(id);
}

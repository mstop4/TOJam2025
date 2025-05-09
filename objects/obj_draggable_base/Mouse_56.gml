if (obj_game_controller.current_active_draggable == id) {
  obj_game_controller.current_active_draggable = noone;
  dragging = false;
  
  with (obj_drag_target) is_hovered = false;
}
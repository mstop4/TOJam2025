is_hovered = false;
if (!is_struct(item)) exit;
if (obj_game_controller.game_state != GAME_STATE.CHOOSE_KEY) exit;

if (point_in_rectangle(
  device_mouse_x(0),
  device_mouse_y(0),
  x - click_zone_half_size,
  y - click_zone_half_size,
  x + click_zone_half_size,
  y + click_zone_half_size
)) {
  is_hovered = true;
}
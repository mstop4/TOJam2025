is_hovered = false;

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
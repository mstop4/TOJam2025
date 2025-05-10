is_hovered = false;

function draw_item() {
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

function check_hover() {
  if (point_in_rectangle(
    device_mouse_x(0),
    device_mouse_y(0),
    x - click_zone_half_size,
    y - click_zone_half_size,
    x + click_zone_half_size,
    y + click_zone_half_size
  )) {
    if (!is_hovered) on_hover_enter();
    is_hovered = true;
  } else {
    if (is_hovered) on_hover_exit();
    is_hovered = false;
  }
}

function on_hover_enter() {}

function on_hover_exit() {}

function on_click() {
  show_debug_message("Click");
}
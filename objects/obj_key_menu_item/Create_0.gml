is_hovered = false;

function draw_item() {
  draw_set_colour(c_white);
  
  draw_sprite(spr_key, 0, x, y);
  draw_text(x, y, item.display_serial);
  
  if (is_hovered) {
    draw_set_colour(c_lime);
  }
  
  draw_rectangle(
    x - click_zone_half_size,
    y - click_zone_half_size,
    x + click_zone_half_size,
    y + click_zone_half_size,
    true
  );
}
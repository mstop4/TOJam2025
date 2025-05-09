current_page = 0;
bounds = {
  left: 0,
  top: room_height - 200,
  right: room_width,
  bottom: room_height
};

guides = {
  center_x: lerp(bounds.left, bounds.right, 0.5),
  center_y: lerp(bounds.top, bounds.bottom, 0.5),
  row_y: [
    lerp(bounds.top, bounds.bottom, 0.25),
    lerp(bounds.top, bounds.bottom, 0.75)
  ],
  column_x: [
    lerp(bounds.left, bounds.right, 0.2),
    lerp(bounds.left, bounds.right, 0.5),
    lerp(bounds.left, bounds.right, 0.8)
  ]
};
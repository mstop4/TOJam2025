if (dragging) {
  x = clamp(device_mouse_x(0), 0, room_width);
  y = clamp(device_mouse_y(0), 0, room_height);
  
  var _drag_target = instance_place(x, y, obj_drag_target);
  
  if (_drag_target != noone) {
    _drag_target.is_hovered = true;
  }
}

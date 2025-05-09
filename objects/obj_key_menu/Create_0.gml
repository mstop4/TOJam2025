num_items = array_length(obj_game_controller.all_items);

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

menu_items = [];

if (num_items == 1) {
  var _item = instance_create_layer(guides.center.x, guides.center.y, layer, obj_key_menu_item, {
    item: obj_game_controller.all_items[0]
  });
  
  array_push(menu_items, _item);
} else if (num_items == 3) {
  for (var _i=0; _i<3; _i++) { 
    var _item = instance_create_layer(guides.column_x[_i], guides.center.y, layer, obj_key_menu_item, {
      item: obj_game_controller.all_items[_i]
    });
      
    array_push(menu_items, _item);
  }
} else {
  for (var _j=0; _j<2; _j++) {
    for (var _i=0; _i<3; _i++) {
      var _item = instance_create_layer(guides.column_x[_i], guides.row_y[_j], layer, obj_key_menu_item, {
        item: obj_game_controller.all_items[_j*3 + _i]
      });
      
      array_push(menu_items, _item);
    }
  }
}

current_page = 0;
can_click = true;
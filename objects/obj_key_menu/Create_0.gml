num_items = array_length(obj_game_controller.all_items);
current_page = 0;
num_pages = ceil(num_items / 6);
can_click = true;

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

function init() {
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
  
  if (num_pages > 1) {
    instance_create_layer(bounds.left + 16, guides.center_y, layer, obj_key_menu_scroll, {
      delta: -1,
      menu: id
    });
    instance_create_layer(bounds.right - 16, guides.center_y, layer, obj_key_menu_scroll, {
      delta: 1,
      menu: id
    });
  }
}

function change_page(_delta) {
  if (num_pages < 2) return;
  current_page = wrap(current_page + _delta, 0, num_pages-1);
  var _page_base_index = current_page * 6;
  
  for (var _i=0; _i<6; _i++) {
    var _item_index = _page_base_index + _i;
    menu_items[_i].item = _item_index < num_items
      ? obj_game_controller.all_items[_item_index]
      : -1;
  }
}

init();
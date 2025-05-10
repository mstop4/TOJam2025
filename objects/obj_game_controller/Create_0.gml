global.utf8_codes = {
  A: ord("A"),
  Z: ord("Z"),
  ZERO: ord("0"),
  NINE: ord("9")
};

popup_item = instance_create_layer(room_width / 2, 100, "Overlay", obj_popup_item);
instance_deactivate_object(popup_item);

current_active_draggable = noone;
all_items = [];
keys = [];
encrypt_tags = [];

game_state = GAME_STATE.CHOOSE_KEY;

var _encrypt_tag = new EncryptTag(1, "ABCDEF", "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
array_push(all_items, _encrypt_tag);
array_push(encrypt_tags, _encrypt_tag);

var _key = new Key(encrypt_tags[0], "1");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "2");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "3");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "4");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "5");
array_push(all_items, _key);
array_push(keys, _key);

_encrypt_tag = new EncryptTag(1, "QWERTY", "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
array_push(all_items, _encrypt_tag);
array_push(encrypt_tags, _encrypt_tag);

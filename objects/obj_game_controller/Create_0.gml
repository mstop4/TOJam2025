global.utf8_codes = {
  A: ord("A"),
  Z: ord("Z"),
  ZERO: ord("0"),
  NINE: ord("9")
};

current_active_draggable = noone;
all_items = [];
keys = [];
encrypt_tags = []

var _encrypt_tag = new EncryptTag(1, "ABCDEF", "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
array_push(all_items, _encrypt_tag);
array_push(encrypt_tags, _encrypt_tag);

var _key = new Key(encrypt_tags[0], "E6F2CCH7");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "E6F2CCH7");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "E6F2CCH7");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "E6F2CCH7");
array_push(all_items, _key);
array_push(keys, _key);

_key = new Key("", "E6F2CCH7");
array_push(all_items, _key);
array_push(keys, _key);

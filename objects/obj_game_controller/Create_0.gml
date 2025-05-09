global.utf8_codes = {
  A: ord("A"),
  Z: ord("Z"),
  ZERO: ord("0"),
  NINE: ord("9")
};

current_active_draggable = noone;

encrypt_tag = new EncryptTag(1, "ABCDEF", "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");

key = new Key(encrypt_tag, "E6F2CCH7");
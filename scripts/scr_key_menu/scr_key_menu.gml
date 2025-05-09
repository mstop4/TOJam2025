/// @param {String} _serial
function ItemBase(_serial = "") constructor {
  type = "none";
  actual_serial = _serial;
  display_serial = "";

  function encrypt_plaintext(_plaintext, _shift) {
    if (_shift == 0) {
      return _plaintext;
    }
    
    var _encrypted_text = "";
    var _str_len = string_length(_plaintext);
    
    for (var _i=1; _i<=_str_len; _i++) {
      var _char = string_char_at(_plaintext, _i);
      var _char_code = ord(string_upper(_char));
      
      if (_char_code >= global.utf8_codes.ZERO && _char_code <= global.utf8_codes.NINE) {
        // Encrypt digit
        _encrypted_text += chr(wrap(_char_code + _shift, global.utf8_codes.ZERO, global.utf8_codes.NINE));
      } else if (_char_code >= global.utf8_codes.A && _char_code <= global.utf8_codes.Z) {
        // Encrypt letter
        _encrypted_text += chr(wrap(_char_code + _shift, global.utf8_codes.A, global.utf8_codes.Z));
      } else {
        _encrypted_text += "?";
      }
    }
    
    return _encrypted_text;
  }
}

/// @param {Struct} _encrypt_tag
/// @param {String} _serial
function Key(_encrypt_tag, _serial = "") : ItemBase(_serial) constructor {
  type = "key";
  // actual_serial
  // display serial
  encryption_tag_serial = "";
  
  if (is_struct(_encrypt_tag)) {
    encryption_tag_serial = _encrypt_tag.actual_serial;
    display_serial = encrypt_plaintext(actual_serial, _encrypt_tag.encrypt_shift);
  } else {
    encryption_tag_serial = "";
    display_serial = actual_serial;
  }
  
  show_debug_message($"Key\nActual Serial: {actual_serial}\nDisplay Serial: {display_serial}");
}

/// @param {Real} _encrypt_shift
/// @param {String} _serial
/// @param {String} _plaintext
function EncryptTag(_encrypt_shift, _serial = "", _plaintext = "") : ItemBase(_serial) constructor {
  type = "encryptTag";
  // actual_serial
  display_serial = actual_serial;
  encrypt_shift = _encrypt_shift;
  plaintext_example = _plaintext;
  encrypted_exmaple = encrypt_plaintext(plaintext_example, _encrypt_shift);
  
  show_debug_message($"EncryptTag\nPlaintext: {plaintext_example}\nEncrypted Text: {encrypted_exmaple}");
}
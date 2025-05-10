if (!instance_exists(menu)) exit;
if (obj_game_controller.game_state != GAME_STATE.CHOOSE_KEY) exit;  

menu.change_page(delta);
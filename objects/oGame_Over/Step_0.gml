/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if keyboard_check(vk_enter) {
	
	var _trans = instance_create_layer(0,0,"Instances_1",o_Transicao)
	_trans.destino = rMenu;
	global.inimigosmortos = 0;
	audio_play_sound(sfx_lose,0,false);
	audio_stop_all();
}
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.inimigosmortos = 0;
global.pontos += 400;
layer_sequence_create("Boss",x,room_height/2 - 32,sq_morte_boss);

audio_play_sound(sfx_explosion,2,false);

audio_stop_all();


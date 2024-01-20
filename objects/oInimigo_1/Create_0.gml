/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



chance = random(40);

vspeed = 3;

//pontosG = function () {

//global.pontos = global.pontos + 10;	

//global.inimigosmortos++;

//}


atirando = function () {
	
	
	instance_create_layer(x,y ,"Tiro",oInimigoT);	
	audio_play_sound(sfx_laser1,1,false);
}
	
	
alarm [0] = 60;
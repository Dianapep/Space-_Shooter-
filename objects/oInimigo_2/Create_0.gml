/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


vspeed = 3;


chance = random(40);

move_lados = 1;



	if place_meeting(x,y,oInimigo_1){
		instance_destroy();	
	}
	
	



pontosG = function () {

global.pontos = global.pontos + 40;

global.inimigosmortos++;
	
}


atirando = function () {
	
	
	instance_create_layer(x,y ,"Tiro",oTiro_2);	
	audio_play_sound(sfx_laser2,1,false);
}

alarm [0] = 60;
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vidamax = 2000
vida = vidamax;
time = 0;
velocidadehorizontal = 3;

delay_tiro = room_speed/2;
espera_tiro = 0;

delay_estado = room_speed * 7;

espera_estado = delay_estado;

criarminions = true;
audio_play_sound(Aggressor,0,true);

estado_atual = choose("estado1","estado2","estado3");

moveboss = function() {
	
	x += velocidadehorizontal
	if (x >= 1632 or x <= 288 ) {
		
		velocidadehorizontal *= -1;
	}
}
estado1 = function () {
	
	sprite_index = sBoss
	espera_tiro --;
	if( espera_tiro <= 0) {
	instance_create_layer(x,y+100,"Tiro",oTiro_2);
	audio_play_sound(sfx_laser1,1,false);
		espera_tiro = delay_tiro
	} 
	
}	
estado2 = function () {
	

	espera_tiro --;
	if( espera_tiro <= 0) {
	instance_create_layer(x+160,y+10,"Tiro",oInimigoT);
	audio_play_sound(sfx_laser1,1,false);
	instance_create_layer(x-160,y+10,"Tiro",oInimigoT);
	audio_play_sound(sfx_laser2,1,false);
		espera_tiro = delay_tiro * 2;
		} 
	
	
	}
estado3 = function () {
	

	
	espera_tiro --;
	if( espera_tiro <= 0) {
	instance_create_layer(x+160,y+10,"Tiro",oInimigoT);
	audio_play_sound(sfx_laser2,1,false);
	instance_create_layer(x-160,y+10,"Tiro",oInimigoT);
	audio_play_sound(sfx_laser1,1,false);
	instance_create_layer(x,y+100,"Tiro",oTiro_2);
		espera_tiro = delay_tiro * 2;
		} 
		
	
}
	
estado4 = function(){
	
	sprite_index = sBossin;
	
	x += sign (room_width/2 - x);
	
if (criarminions == true){
	var _minion = instance_create_layer(128,672,"Boss",oMinion);

	_minion.image_angle = 90;

	_minion = instance_create_layer(1760,672,"Boss",oMinion);

	_minion.image_angle = 270;
	criarminions = false;
}

}
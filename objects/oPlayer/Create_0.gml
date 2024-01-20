//velocidade = velocidade do player
velocidade = 5;

//global.vida é a quantidade de vida do player
global.vida = 3;

//global.escudo é a quantidade de escudo do player
escudos = 3;

//vlt = a velocidade do tiro o tempo entre eles sendo de 60 = 1 sec
vlt = 60;
vida = 3;
//level_tiro = o nivel do tiro
//ele soma com os power ups 

level_tiro = 1;

escudoon = noone;
criaescudo = function () {
	
	Es = keyboard_check_released(ord("E"))
	if (Es  and escudos > 0 and !escudoon) {
		
		//aqui eu criei uma variavel temporaria para o escudo 
		//e caso esse if inicie ira ser criado um escudo
		var escudo = instance_create_layer(x,y+60,"Escudo",oEscu)

		//aqui eu to dizendo q o escudo ira ser feito no alvo id 
		//que nesse sentido é o player
		escudo.alvo = id;
		escudoon = escudo.id;
		escudos =  escudos - 1;
		
	} 
		
}
//function dos tiros 
#region  tiros functions	
atirando = function(){
	
//tiro 1 sendo o mais basico 
tiro1 = function() {
		//aqui ele ta criando o obj tiro so 1 normal
		instance_create_layer(x,y ,"Tiro",oTiropl)
		audio_play_sound(sfx_laser1,1,false);		
}





tiro2 = function() {
	
		//aqui eu criei uma var temporaria chamada esquerda e falei q a var esquerda
		// é = a criar um tiro com o x dela sendo -60
		var esquerda = instance_create_layer(x - 60,y ,"Tiro",oTiro_2P)
		//dps coloquei para a esquerda o hspeed dela ser = -3
		//para fazer ela dar uma curvas
		esquerda.hspeed = -3;
		
		//aqui é a msm ideia so que com a direita
		var direita = instance_create_layer(x + 60,y ,"Tiro",oTiro_2P)
		
		direita.hspeed = +3;
		audio_play_sound(sfx_laser2,1,false);	
}
tiro3 = function() {
		//o tiro 3 eu so coloquei o tiro 2 com o tiro 1
		tiro2();
		tiro1();
	
}

tiro4 = function() {
		//o tiro 4 eu coloquei para sair o tiro 1 e 2 normal soq com a adição
		instance_create_layer(x,y ,"Tiro",oTiropl)
		//a var T eu criei para fazer um tiro soq com o x - 30 e o y +30
var T =	instance_create_layer(x-30,y +30,"Tiro",oTiropl)
		//coloquei para ele ficar indo meio torto
		T.hspeed = -4;	
		//e por final mudei a direction da imagem para ela ficar na diagonal
		//fazendo o tiro ir na diagonal
		T.image_angle = T.direction + 90;
		
		//msm coisa soq com o p
var P =	instance_create_layer(x+30,y +30,"Tiro",oTiropl)
		P.hspeed = 4;
		P.image_angle = P.direction - 90;
		audio_play_sound(sfx_laser1,1,false);
		tiro2();
		
		
} 
tiro5 = function() {
	
		//no tiro 5 é apenas o tiro 2 + o tiro 4
		tiro2();
		tiro4();


}

#endregion
	
	#region powers up 
	
	
	
	
powerup = function (_chance) {
		
	
	 if (_chance >= 90 ){
		if (level_tiro < 5){
			
		level_tiro++;
		}
	 }
	 
	 else if (_chance >= 45 ){
		if (vlt > 20){
			
			vlt *= 0.9
		}
	
	} else {
		
		if (velocidade <10 ) {
			
		 velocidade = velocidade + 0.3;	
		}
		
	}








}
	
	
	#endregion 
	
	
if (keyboard_check(vk_space) and alarm [0] == -1) {
	
	
	alarm [0] = vlt;
	
	if (level_tiro == 1 ) {


	tiro1();

				}
	else  if (level_tiro ==2) {
		
		tiro2();
			} 
	else  if (level_tiro == 3) {
		
		
		tiro3();
		
		}
	else if (level_tiro == 4) {
	
	 tiro4();
	
	}else if (level_tiro == 5) {
	
	 tiro5();
	
	}



}

	//var fire = keyboard_check_pressed(vk_space);
	
	
	//if (fire) {
	
	//instance_create_layer(x,y ,"Tiro",oTiropl)	
	//	}


}

perdervida = function() {

if (!escudoon){
	
	

	if (vida > 0) {
	

		vida--;
		screenshake(5);
	
	} else {
	
		instance_destroy();
		
	}
	}
}
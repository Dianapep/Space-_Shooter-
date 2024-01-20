/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



var mutplicador = 0;
var espaco = 40;

repeat (vida) {
	
	
		draw_sprite_ext(sPlayer,1,40 + espaco * mutplicador ,10,.5,.5,0,c_white,1);
		mutplicador ++;
}

repeat (escudos) {
	
	
		draw_sprite_ext(sEscudo,2,50 + espaco * mutplicador ,30,.3,.3,0,c_white,1);
		mutplicador ++;
}


//draw_text(30,10,global.vida)
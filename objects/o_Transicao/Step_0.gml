/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor




if (troquei == false) {
	
	
	alpha += 0.03;
	
}else {
	
	alpha -= 0.03;
	
}

if (alpha >= 1 and troquei == false) {
	

	room_goto(destino);
}

if (alpha < 0 and troquei == true){
	
	instance_destroy(self)
}

if (instance_exists(s_goodend)){
	
		alvo = rMenu;
		
}
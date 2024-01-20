
//aqui eu criei as variaveis up left down right e es
var up, left ,down ,right;

//iniciei a função atirando para começar a atirar 
atirando();
criaescudo();
//dentro do Es ele ta chekando se a tecla E foi solta


//no up ele ta vendo se a tecla W foi apertada
up = keyboard_check(ord("W"))

//no left ele ta vendo se a tecla A foi 
left = keyboard_check(ord("A"))

//no down ele ta vendo se a tecla S foi apertada
down = keyboard_check(ord("S"))

//no right ele ta vendo se a tecla D foi apertada
right = keyboard_check(ord("D"))

//aqui eu coloquei um if que caso o player tenha apertado a tecla E e 
//global.escudo for MAIOR que zero ele ira inicar esse if
	//aqui eu coloquei um if para balanciar a velocidade
		//dizendo q se ela for = 9 ela vai virar 7
if velocidade = 9 {
	
		velocidade = 7;
 
}

	//aqui envolve movimentação ent o down - up * velocidade 
	//vai fazer ele ir pra cima ou para baixo
	y += (down - up) * velocidade;	
	x += (right - left) * velocidade;
	
	//isso é para o player n poder sair da tela vc coloca o ponto mais alto
	//tanto do x quanto do y e agora ele n pode sair
	x = clamp(x,64,1856);
	y = clamp(y,0,960);

	
	

	//codigo so para teste
	if (keyboard_check_pressed(vk_up) and level_tiro < 5){
		
		level_tiro ++;	
	}
	
	
	if (keyboard_check_pressed(vk_down) and level_tiro > 1){
		
		level_tiro --;	
	}
	
	if (keyboard_check(vk_left)and vlt >20 ){
		
		vlt = room_speed / 4;	
	}
	if (keyboard_check(vk_right) ){
		
		vlt = room_speed * 4;	
	}


	
	//coloquei um if para ver se a vida esta = 0
	if (vida == 0) {
		
		instance_destroy(oPlayer);
		instance_destroy(oInimigo_1);
		instance_destroy(oInimigo_2);
		instance_create_layer(1024,512,"Assets_1",oGame_Over);
	}
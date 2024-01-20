/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

time += .1;
espera_estado --;
if(espera_estado <=0) {
	
	if (vida > vidamax/2){
	estado_atual = choose("estado1","estado2","estado3");
	} else {
		
		estado_atual = choose("estado1","estado2","estado3","estado4")	
		
	}
	
	
	 
	espera_estado = delay_estado;
	
	criarminions = true;
}

if (estado_atual == "estado1") {
	
	estado1();
}

 else if (estado_atual == "estado2"){
	
	estado2();
	moveboss();
	
}else if (estado_atual == "estado3"){
	
	estado3();
	moveboss();
	
}else if (estado_atual == "estado4"){
	
	estado4();

}


if (estado_atual != "estado4") {
	

	sprite_index = sBoss;
	
}






if (keyboard_check(vk_enter)) {
	
	
	vida -= 20;	
}

if vida == 0 {
	
	instance_destroy();	
}


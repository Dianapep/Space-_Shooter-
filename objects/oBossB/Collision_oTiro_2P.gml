/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if ( estado_atual !="estado4"){
	
	
	if (vida >0 ) {
	vida = vida -2;
	}
	else {
	
	
		instance_destroy();	
	
	}

	instance_destroy(other);

}
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (vida >0 ) {
	vida --;
	}
	else {
	
		instance_create_layer(x,y,"Instances",oMorteI);
		instance_destroy();	
	
	}
instance_destroy(other);
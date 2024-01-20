/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



pontos = global.pontos;




	
if (pontos >= 100) {
	
	level = 1;
}

if instance_exists(oGame_Over) {
	
	
	pontos = 0;	
}


if ( instance_exists(oBossB)) {
	
	instance_destroy(oInimigo_1);	
	instance_destroy(oInimigo_2);	
	instance_destroy(oInimigoT);	
	instance_destroy(oPower);
	instance_destroy(oControle);	
	
}
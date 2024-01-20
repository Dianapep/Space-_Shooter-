/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.inimigosmortos += 10;
global.pontos += 10;		
instance_create_layer(x,y,"Instances",oMorteI);
if (chance >= 10) {
	instance_create_layer(x,y,"Instances",oPower);
}


instance_destroy();

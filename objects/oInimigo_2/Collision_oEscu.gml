/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.pontos += 10;	
global.inimigosmortos += 10;
instance_create_layer(x,y,"Instances",oMorteI);

if (chance >= 27) {
	instance_create_layer(x,y,"Instances",oPower);
}

pontosG();

instance_destroy();
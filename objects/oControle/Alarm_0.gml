/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var ini = random_range(32,1888);

var pwp = random_range(480,1260);



instance_create_layer(ini,-64,"instances",oInimigo_1);

if global.inimigosmortos >= 60 {


instance_create_layer(pwp,-64,"Instances",oInimigo_2);


}

if (global.inimigosmortos >= 150 and criar_boss == true) {
	
	audio_stop_all();
	layer_sequence_create("Boss",992,544,sq_boss_chegando);
	criar_boss = criar_boss == false;
	instance_destroy(oInimigo_1);	
	instance_destroy(oInimigo_2);	
	instance_destroy(oInimigoT);	
	instance_destroy(oPower);
	instance_destroy(oControle);	
}
alarm [0] = room_speed * random_range(1,3)
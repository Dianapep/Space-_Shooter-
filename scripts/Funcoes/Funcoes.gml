// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Destroi_seq(){
	
	var elementos
	elementos = layer_get_all_elements("Boss");
	layer_sequence_destroy(elementos [0]);
	
	instance_create_layer(992,288,"Boss",oBossB);
	
}

function criar_se() {
	
	
	if (instance_exists(oPlayer)) {
		
		
layer_sequence_create("Assets_1",oPlayer.x,oPlayer.y,s_goodend);

		
	}
	instance_destroy(oPlayer);

	
}
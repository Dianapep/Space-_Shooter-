/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor




if (image_index > 0) {
	
	image_index --;
	image_alpha = image_alpha - .4;
}else {
	
	instance_destroy();	
}


alarm [0] = room_speed;
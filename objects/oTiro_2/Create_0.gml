/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



vspeed = 10;


image_xscale = 2;

image_yscale = 2;


alarm [0] = 2;
if (instance_exists(oPlayer)) {
	
direction = point_direction(x,y,oPlayer.x,oPlayer.y);
}

image_angle = direction + 90;
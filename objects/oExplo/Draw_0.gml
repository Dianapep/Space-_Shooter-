/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale *.3,image_yscale *.3,image_angle,c_white,0.5);
gpu_set_blendmode(bm_normal);
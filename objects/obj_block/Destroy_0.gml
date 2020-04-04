instance_create_layer(x,y, "Instances", obj_puff);
if(irandom(3) == 0){  // 1 in 4 chance for a powerup
	instance_create_layer(x,y,"Instances",obj_powers);
}
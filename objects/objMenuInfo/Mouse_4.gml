
event_inherited();

if (instance_exists(objInfo))
{
		instance_destroy(objInfo);
} else {
	instance_create_layer(x, y, "Instances", objInfo);
}
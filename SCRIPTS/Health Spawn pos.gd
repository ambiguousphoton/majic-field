extends Node2D




onready var pos = $pos
var health = preload("res://RESOURCES/SCEANS/Health pick up.tscn")
var can_spawn = true

func spawn(spt,spp):
	
	var new_spawn = spt.instance()
	add_child(new_spawn)
	new_spawn.global_position = spp.global_position
	

func _on_HealthSpawner_timeout():
	spawn(health, pos)
	
	$HealthSpawner.start()

extends Node



onready var pos = $Position2D
var enemy = preload("res://RESOURCES/SCEANS/ALPHA.tscn")
var can_spawn = true




func spawn(spt,spp):
	
	var new_spawn = spt.instance()
	add_child(new_spawn)
	new_spawn.global_position = spp.global_position





func _on_alphaspawner_timeout():
	spawn(enemy, pos)
	
	$alphaspawner.start()

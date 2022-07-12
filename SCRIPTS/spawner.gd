extends Node2D



onready var pos = $Position2D
var enemy = preload("res://enemy.tscn")
var can_spawn = true




func spawn(spt,spp):
	
	var new_spawn = spt.instance()
	add_child(new_spawn)
	new_spawn.global_position = spp.global_position


func _on_enemyspawner_timeout():
	
	spawn(enemy, pos)
	
	$enemyspawner.start()

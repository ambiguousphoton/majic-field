extends Node2D

var Player
export var x = 40


var timer = 5.0
onready var TIMER = $Timer



func _ready():
	var lvl =  $Label.text
	Global.points = 0
	TIMER.connect("timeout" , self, "_on_Timer_timeout")
	TIMER.start()

func _on_tank_shoot(bullet, _position , _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)


func _on_player_shoot():
	pass # Replace with function body.


func _on_Timer_timeout():
	if Global.points >= x:
		if Global.unlockedlevels <  str2var($Label.text):
			Global.unlockedlevels = str2var($Label.text)
			Savegame.save_val(Global.unlockedlevels)
		get_tree().change_scene("res://RESOURCES/SCEANS/VICTORY SCREEN.tscn")
	$Timer.start()



	

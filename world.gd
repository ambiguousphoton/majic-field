extends Node2D

var Player



func _ready():
	Global.points = 0
	Global.current = 1
func _on_tank_shoot(bullet, _position , _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)
	 


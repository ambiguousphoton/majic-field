extends KinematicBody2D

export var max_health = 50
export var point = 10

export var damage = 0.05

onready var raycast = $RayCast2D



export var SPEED = 150
var velocity = Vector2.ZERO
var player = null
var health
var can_damage = true



func do_damage():
	if can_damage:
		can_damage = false
		$damagetimer.start()

func _ready():
	Global.gENEMY = self
	health = max_health
	emit_signal("health_changed", health * 100 / max_health)

func take_damage(amount):
	health -= amount
	$AudioStreamPlayer2D.play()
	$AnimationPlayer.play("damage")
	emit_signal("health_changed", health * 100 / max_health)
	if health <= 0:
		Global.points += point
		$AnimatedSprite.visible = true
		$AnimatedSprite.play()
		explode()

func explode():
	
	queue_free()

func _physics_process(delta):
	if Global.Player == null:
		return
	var pos_to_plr = Global.Player.global_position - global_position
	pos_to_plr = pos_to_plr.normalized()
	move_and_collide(pos_to_plr * SPEED  * delta)
	look_at(Global.Player.position)

	if raycast.is_colliding():
		var a = raycast.get_collider()
		if a.has_method('take_damage'):
			a.take_damage(damage)
			a.take_damage(damage)


func _on_damagetimer_timeout():
	can_damage = true

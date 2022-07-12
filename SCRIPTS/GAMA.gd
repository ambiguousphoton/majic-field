extends KinematicBody2D

signal shoot

onready var raycast = $RAYCASTS
export (PackedScene) var BULLET
export  (float) var guncooldown
export var point = 1
export var SPEED = 130
export var damage = 0.025




var can_damage = true
var can_shoot = true
export var max_health = 100
var health
var target = null
func _ready():
	Global.gENEMY = self
	health = max_health
	$guntimer.wait_time = guncooldown

func do_damage():
	if can_damage:
		can_damage = false
		$damagetimer.start()

func take_damage(amount):
	health -= amount
	$AnimationPlayer.play("damage")
	$AudioStreamPlayer2D2
	if health <= 0:
		Global.points += point
		explode()

func explode():
	queue_free()


func _physics_process(delta):
	if Global.Player == null:
		return
		
	$turret.look_at(Global.Player.position)
	
	if can_shoot:
			$AudioStreamPlayer2D.play()
			can_shoot = false
			$guntimer.start()
			var dir = Vector2(1,0).rotated($turret.global_rotation)
			emit_signal("shoot", BULLET, $turret/muzzle.global_position, dir)
	var pos_to_plr = Global.Player.global_position - global_position
	pos_to_plr = pos_to_plr.normalized()
	move_and_collide(pos_to_plr * SPEED  * delta)
	look_at(Global.Player.position)

	for ray in raycast.get_children():
		if ray.is_colliding():
			var a = ray.get_collider()
			if a.has_method('take_damage'):
				a.take_damage(damage)


func _on_Area2D_body_entered(body):
	pass
	



func _on_guntimer_timeout():
	can_shoot = true


func _on_Area2D_body_exited(body):
	pass


func _on_damagetimer_timeout():
	can_damage = true


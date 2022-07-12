extends KinematicBody2D



signal shoot
signal health_changed
signal  dead






export var SPEED = 200
export (PackedScene) var BULLET
export  (float) var guncooldown 
export var max_health = 100
export (float) var Rotation_Speed = 0.2
export var MLdamage = 50


var can_shoot = true
var Velocity = Vector2.ZERO
var Rotation_Dir = 0
var alive = true
var health 
var flip = false
var meleespeed = 0.15
var  meleetrue = false
var isalive = true
export var ischarecter = 1
#puppet var puppet_position = Vector2(0,0) setget puppet_position_set
#puppet var puppet_velocity = Vector2()
#puppet var puppet_rotation = 0


onready var tween = $Tween


func _ready():

	if Global.charecter != ischarecter:
		queue_free()
	
	
	if Global.charecter ==ischarecter:
#		$AdMob.load_interstitial()
		Global.Player = self
		health = max_health
		emit_signal("health_changed", health * 100 / max_health)
		$guntimer.wait_time = guncooldown
		meleetrue = false
		
	
func take_damage(amount):
	health -= amount
	$AnimationPlayer.play("damage")
	emit_signal("health_changed", health * 100 / max_health)
	if health <= 0:
		emit_signal("dead")
		isalive = false
		explode()

func take_health(amount):
	health += amount
	$AnimationPlayer.play("health gain")
	emit_signal("health_changed", health * 100 / max_health)


func take_fullhealth():
	health = max_health
	$AnimationPlayer.play("health gain")
	
func explode():
	$AudioStreamPlayer2D2.play()
	$controler.queue_free()
	queue_free()
#	$AdMob.show_interstitial()
	get_tree().change_scene("res://RESOURCES/SCEANS/SCORE.tscn")
	
	
func shoot():
	if Global.charecter == ischarecter:
		if can_shoot:
				$AudioStreamPlayer2D.play()
				$gunShow.play("gun")
				$Camera2D/SCREENSHAKE.screenshake(0.45,9,900)
				can_shoot = false
				$guntimer.start()
				var dir = Vector2(1,0).rotated($turret.global_rotation)
				emit_signal("shoot", BULLET, $turret/muzzle.global_position, dir)
#	if can_shoot:
#
#
#
#
#
#		$guntimer.start()
#		var dir = Vector2(1,0).rotated($turret.global_rotation)
#		emit_signal("shoot",BULLET ,  $turret/muzzle.global_position, dir)
#		can_shoot = false
#	pass

func _physics_process(delta):
	if Global.charecter  == ischarecter:
	#if is_network_master():
		if not alive:
			return
		_input(delta)
		Velocity = Velocity.normalized() * SPEED
		Velocity = move_and_slide(Velocity )
		
		_rotation()

		rotation += Rotation_Dir * Rotation_Speed * delta
		
		
		if flip == true:
			$sargrnt.flip_h = true
			#$turret.flip_v = true
		if flip == false:
			$sargrnt.flip_h = false
			#$turret.flip_v = false
		
		if meleetrue == false:
			$melee.visible = false
			$turret.visible = true
		if meleetrue == true:
			$melee.visible = true
			$turret.visible = false
		
#		else:
#			rotation_degrees = lerp(rotation_degrees, puppet_rotation, delta * 8)
#
#			if not tween.is_active():
#			move_and_slide(puppet_velocity * SPEED)





func _input(delta):
	
	Velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		Velocity.x += 1
		flip = false
		$Animationmover.play("movement")
		#$AnimationPlayer.play("leg move")
	if Input.is_action_pressed("ui_left"):
		Velocity.x -= 1
		flip = true
		$Animationmover.play("movement")
		#$AnimationPlayer.play("leg move")
	if Input.is_action_pressed("ui_down"):
		Velocity.y += 1
		$Animationmover.play("movement")
		#$AnimationPlayer.play("leg move")
	if Input.is_action_pressed("ui_up"):
		Velocity.y -= 1
		$Animationmover.play("movement")
		#$AnimationPlayer.play("leg move")
		
	if Input.is_action_pressed("ui_accept"):
			explode()
			
	if Input.is_action_pressed("ui_atk"):
		meleetrue = true
		
		melee()

	#rotation = lerp(rotation,-Velocity.angle(),0.1)
	if Input.is_action_pressed("ui_blast"):
		if meleetrue == false:
			shoot()
	
	if Input.is_action_just_released("ui_atk"):
		meleetrue = false
	
	
	
func melee():
	if Global.charecter == ischarecter:
		
		Rotation_Dir = 0
		$melee.rotation += Rotation_Dir + meleespeed 
		
	pass

func _rotation():
	Rotation_Dir = 0
	if Input.is_action_pressed("ui_s"):
		$turret.rotation += Rotation_Dir + Rotation_Speed 
	if Input.is_action_pressed("ui_w"):
		$turret.rotation += Rotation_Dir + -Rotation_Speed 
	
	

		



func _on_guntimer_timeout():
	can_shoot = true
	

#func puppet_position_set(new_value) -> void:
#	puppet_position = new_value
#
#	tween.interpolate_property(self,"global_position", global_position, puppet_position, 0.1)
#	tween.start()
	
	
#func _on_network_tick_rate_timeout():
#	if is_network_master():
#		rset_unreliable("puppet_position", global_position)
#		rset_unreliable("puppet_rotation", rotation_degrees)
#		rset_unreliable("puppet_velocity", Velocity)


func _on_Timer_timeout():
	$AdMob.hide_banner()





func _on_melee_damage_body_entered(body):
	if meleetrue == true:
		
		if body.has_method('take_damage'):
			body.take_damage(MLdamage)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"





# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


extends Sprite

export (PackedScene) var BULLET
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Rotation_Dir = 0
var Rotation_Speed = 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed("ui_blast"):
		var bullet_instance = BULLET.instance()
		bullet_instance.rotation = rotation
		bullet_instance.global_position = $muzzle.global_position
		get_parent().add_child(bullet_instance) 

		_rotation()
		rotation += Rotation_Dir * Rotation_Speed 


func _rotation():
	Rotation_Dir = 0
	if Input.is_action_pressed("ui_s"):
		$turret.rotation += Rotation_Dir + Rotation_Speed 
	if Input.is_action_pressed("ui_w"):
		$turret.rotation += Rotation_Dir + -Rotation_Speed 

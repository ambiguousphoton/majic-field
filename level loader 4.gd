extends Node2D


onready var  tex = preload("res://art/lock.png")



func _ready():

	
	if Global.unlockedlevels <30:
		$level31.set_texture(tex)
	if Global.unlockedlevels <31:
		$level32.set_texture(tex)
	if Global.unlockedlevels <32:
		$level33.set_texture(tex)
	if Global.unlockedlevels <33:
		$level34.set_texture(tex)
	if Global.unlockedlevels <34:
		$level35.set_texture(tex)
	if Global.unlockedlevels <35:
		$level36.set_texture(tex)
	if Global.unlockedlevels <36:
		$level37.set_texture(tex)
	if Global.unlockedlevels <37:
		$level38.set_texture(tex)
	if Global.unlockedlevels <38:
		$level39.set_texture(tex)
	if Global.unlockedlevels <39:
		$level40.set_texture(tex)


func _on_level_31_pressed():
	if Global.unlockedlevels >= 30:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 31.tscn")


func _on_level_32_pressed():
	if Global.unlockedlevels >= 31:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 32.tscn")

func _on_level_33_pressed():
	if Global.unlockedlevels >= 32:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 33.tscn")


func _on_level_34_pressed():
	if Global.unlockedlevels >= 33:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 34.tscn")


func _on_level_35_pressed(): 
	if Global.unlockedlevels >= 34:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 35.tscn")


func _on_level_36_pressed():
	if Global.unlockedlevels >= 35:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 36.tscn")


func _on_level_37_pressed():
	if Global.unlockedlevels >= 36:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 37.tscn")


func _on_level_38_pressed():
	if Global.unlockedlevels >= 37:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 38.tscn")


func _on_level_39_pressed():
	if Global.unlockedlevels >= 38:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 39.tscn")


func _on_level_40_pressed():
	if Global.unlockedlevels >= 39:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 40.tscn")

func _on_next_level_loader_pressed():
	if Global.unlockedlevels >= 40:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 41.tscn")
	


func _on_previos_level_loader_pressed():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/LEVEL LOADER 3.tscn")

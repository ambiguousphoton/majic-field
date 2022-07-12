extends Node2D

onready var  tex = preload("res://art/lock.png")


func _ready():

	
	if Global.unlockedlevels <10:
		$LEVEL11.set_texture(tex)
	if Global.unlockedlevels <11:
		$LEVEL12.set_texture(tex)
	if Global.unlockedlevels <12:
		$LEVEL13.set_texture(tex)
	if Global.unlockedlevels <13:
		$LEVEL14.set_texture(tex)
	if Global.unlockedlevels <14:
		$LEVEL15.set_texture(tex)
	if Global.unlockedlevels <15:
		$LEVEL16.set_texture(tex)
	if Global.unlockedlevels <16:
		$LEVEL17.set_texture(tex)
	if Global.unlockedlevels <17:
		$LEVEL18.set_texture(tex)
	if Global.unlockedlevels <18:
		$LEVEL19.set_texture(tex)
	if Global.unlockedlevels <19:
		$LEVEL20.set_texture(tex)
			
func _on_LEVEL_11_pressed():
	
	if Global.unlockedlevels >= 10:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 11.tscn")

func _on_LEVEL_12_pressed():
	if Global.unlockedlevels >= 11:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 12.tscn")


func _on_LEVEL_13_pressed():
	if Global.unlockedlevels >= 12:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 13.tscn")


func _on_LEVEL_14_pressed():
	if Global.unlockedlevels >= 13:
		 get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 14.tscn")


func _on_LEVEL_15_pressed():
	if Global.unlockedlevels >= 14:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 15.tscn")


func _on_LEVEL_16_pressed():
	if Global.unlockedlevels >= 15:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 16.tscn")


func _on_LEVEL_17_pressed():
	if Global.unlockedlevels >= 16:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 17.tscn")


func _on_LEVEL_18_pressed():
	if Global.unlockedlevels >= 17:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 18.tscn")


func _on_LEVEL_19_pressed():
	if Global.unlockedlevels >= 18:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 19.tscn")


func _on_LEVEL_20_pressed():
	if Global.unlockedlevels >= 19:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 20.tscn")


func _on_NEXT_LEVEL_LOADER_pressed():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/LEVEL LOADER 3.tscn")


func _on_PREVIOUS_LEVEL_LOADER_pressed():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/LEVEL LOADER 1.tscn")

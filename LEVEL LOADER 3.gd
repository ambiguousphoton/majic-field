extends Node2D


onready var  tex = preload("res://art/lock.png")



func _ready():

	
	if Global.unlockedlevels <20:
		$LEVEL21.set_texture(tex)
	if Global.unlockedlevels <21:
		$LEVEL22.set_texture(tex)
	if Global.unlockedlevels <22:
		$LEVEL23.set_texture(tex)
	if Global.unlockedlevels <23:
		$LEVEL24.set_texture(tex)
	if Global.unlockedlevels <24:
		$LEVEL25.set_texture(tex)
	if Global.unlockedlevels <25:
		$LEVEL26.set_texture(tex)
	if Global.unlockedlevels <26:
		$LEVEL27.set_texture(tex)
	if Global.unlockedlevels <27:
		$LEVEL28.set_texture(tex)
	if Global.unlockedlevels <28:
		$LEVEL29.set_texture(tex)
	if Global.unlockedlevels <29:
		$LEVEL30.set_texture(tex)


func _on_LEVEL_21_pressed():
	if Global.unlockedlevels >= 20:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 21.tscn")


func _on_LEVEL_22_pressed():
	if Global.unlockedlevels >= 21:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 22.tscn")


func _on_LEVEL_23_pressed():
	if Global.unlockedlevels >= 22:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 23.tscn")


func _on_LEVEL_24_pressed():
	if Global.unlockedlevels >= 23:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 24.tscn")


func _on_LEVEL_25_pressed():
	if Global.unlockedlevels >= 24:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 25.tscn")


func _on_LEVEL_26_pressed():
	if Global.unlockedlevels >= 25:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 26.tscn")


func _on_LEVEL_27_pressed():
	if Global.unlockedlevels >= 26:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 27.tscn")


func _on_LEVEL_28_pressed():
	if Global.unlockedlevels >= 27:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 28.tscn")


func _on_LEVEL_29_pressed():
	if Global.unlockedlevels >= 28:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 29.tscn")


func _on_LEVEL_30_pressed():
	if Global.unlockedlevels >= 29:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 30.tscn")


func _on_NEXT_LEVEL_LOADER_pressed():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/level loader 4.tscn")

func _on_PREVIOUS_LEVEL_LOADER_pressed():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/LEVEL LOADER 2.tscn")

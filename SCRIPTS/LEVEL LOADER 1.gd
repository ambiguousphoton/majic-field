extends Control




onready var  tex = preload("res://art/lock.png")

onready var lv1 = $levels/q

onready var lv2 = $levels/w

onready var lv3 = $levels/e

onready var lv4 = $levels/r

onready var lv5 = $levels/t

onready var lv6 = $levels/y

onready var lv7 = $levels/u

onready var lv8 = $levels/i

onready var lv9 = $levels/o

onready var lv10 = $levels/p




func _ready():
##	for i in range($levels.get_child_count()):
#		Global.levels.append(i + 1)
#
##	for level in $levels.get_children():
#		if int(level.name) >= Global.unlockedlevels:
#			pass
#		else:
#			level.modulate = Color(0,1,0)
#			pass
#
	if Global.unlockedlevels == 0:
		lv2.set_texture(tex)
	if Global.unlockedlevels <=1:
		lv3.set_texture(tex)
	if Global.unlockedlevels <= 2:
		lv4.set_texture(tex)
	if Global.unlockedlevels <= 3:
		lv5.set_texture(tex)
	if Global.unlockedlevels <= 4:
		lv6.set_texture(tex)
	if Global.unlockedlevels <= 5:
		lv7.set_texture(tex)
	if Global.unlockedlevels <= 6:
		lv8.set_texture(tex)
	if Global.unlockedlevels <= 7:
		lv9.set_texture(tex)
	if Global.unlockedlevels <= 8:
		lv10.set_texture(tex)
	
	pass



func _on_LEVEL_pressed():
	if Global.unlockedlevels >= 1:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/level 1.tscn")
	


func _on_LEVEL2_pressed():
	if Global.unlockedlevels >= 1:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 2.tscn")

func _on_LEVEL3_pressed():
	if Global.unlockedlevels >= 2:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 3.tscn")


func _on_LEVEL4_pressed():
	if Global.unlockedlevels >= 3:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 4.tscn")

func _on_LEVEL5_pressed():
	if Global.unlockedlevels >= 4:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 5.tscn")


func _on_LEVEL6_pressed():
	if Global.unlockedlevels >= 5:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 6.tscn")


func _on_LEVEL7_pressed():
	if Global.unlockedlevels >= 6:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 7.tscn")


func _on_LEVEL8_pressed():
	if Global.unlockedlevels >= 7:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 8.tscn")


func _on_LEVEL9_pressed():
	if Global.unlockedlevels >= 8:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 9.tscn")


func _on_LEVEL10_pressed():
	if Global.unlockedlevels >= 9:
		get_tree().change_scene("res://RESOURCES/SCEANS/adventure levels/LEVEL 10.tscn")


func _on_NEXT_LEVE_LOADER_pressed():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/LEVEL LOADER 2.tscn")


func _on_BACK_TO_MENU_released():
	get_tree().change_scene("res://title-screen.tscn")

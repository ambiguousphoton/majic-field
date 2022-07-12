extends Control

export var URL = "https://youtu.be/dQw4w9WgXcQ"

export var URL2 = "https://youtu.be/BoZ0Zwab6Oc"
#func _ready():
#	$AdMob.load_banner()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	$Popup.visible = false
	if Savegame.is_file_there():
		Global.unlockedlevels = Savegame.load_val()
	pass

# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


	
func _on_TouchScreenButton_released():
	get_tree().change_scene("res://RESOURCES/SCEANS/world.tscn")


func _on_TouchScreenButton3_released():
	get_tree().change_scene("res://multiplayer.tscn")


func _on_TouchScreenButton2_released():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/LEVEL LOADER 1.tscn")


func _on_TouchScreenButton4_released():
	get_tree().change_scene("res://extra/selectio,n.tscn")



#
#func _on_Timer_timeout():
#	$AdMob.show_banner()
#
#	$Timer2.start()

#
#func _on_Timer2_timeout():
#	$Admob.hide_banner()
#	$Timer.start()



	
	pass

func _on_Label2_pressed():
	$Popup.visible = true




func _on_Label3_pressed():
	$Popup.visible = false


func _on_rate_us_released():
	OS.shell_open(URL2)


func _on_not_press_released():
	OS.shell_open(URL)

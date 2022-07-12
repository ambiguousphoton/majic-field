extends Control

var i = false
var t = 0
var t_on = false

func _process(delta):
	if t_on == true :
		t +=  (delta)




		Global.timer = t

func _ready():
	t_on = true
#	$AdMob.load_interstitial()
#


func _on_MENU_pressed():
	
	Global.points = 0
	get_tree().change_scene("res://title-screen.tscn")






func _on_D1_pressed():
	Input.action_press("ui_up" )
	Input.action_press("ui_right")
func _on_D1_released():
	Input.action_release("ui_up")
	Input.action_release("ui_right")



func _on_D2_pressed():
	Input.action_press("ui_up" )
	Input.action_press("ui_left")
func _on_D2_released():
	Input.action_release("ui_up")
	Input.action_release("ui_left")
	
func _on_D3_pressed():
	Input.action_press("ui_down" )
	Input.action_press("ui_right")
func _on_D3_released():
	Input.action_release("ui_down")
	Input.action_release("ui_right")


func _on_D4_pressed():
	Input.action_press("ui_down" )
	Input.action_press("ui_left")
func _on_D4_released():
	Input.action_release("ui_down")
	Input.action_release("ui_left")






#func _on_AdMob_interstitial_closed():
#	pass
#
#
#func _on_AdMob_interstitial_failed_to_load(error_code):
#	pass # Replace with function body.
#
#
#func _on_AdMob_interstitial_loaded():
#	if i == true:
#		$AdMob.show_interstitial()
#		Global.Player.health = Global.Player.max_health
#		i = false
#
#	pass
#
#
#func _on_AdMob_rewarded_video_loaded():
#	pass
#
#
#func _on_AdMob_rewarded_video_failed_to_load(error_code):
#	pass # Replace with function body.
#
#
#func _on_AdMob_rewarded(currency, ammount):
#	pass
#
#
#func _on_addhealth_released():
#	i = true
#	pass # Replace with function body.

extends CanvasLayer

var x = 0
var y = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.timer < 15:
		x = 10
	elif (Global.timer >= 15 and Global.timer <= 30):
		x = 5
		
	else:
		x = 0
		
		
		
		
#	if Global.Player.health >= 100:
#		y = 10
#	elif Global.Player.health > 50:
#		y = 5
#	else:
#		y= 0
#
#
	
	if x+y >= 10:
		$hp.text = "you rock"
		
		pass
	elif x+y < 10 and x+ y>= 5:
		$STAR/STAR2.queue_free()
		$hp.text = "good"
	else :
		$STAR/STAR2.queue_free()
		$STAR/STAR3.queue_free()
		
		$hp.text = "can do better"
	$AnimationPlayer.play("New Anim")
	$SCORE.text = String(Global.points)
	$TIME_TAKEN.text = String(Global.timer)
	 



	
		


func _on_MENU_pressed():
	get_tree().change_scene("res://RESOURCES/LEVEL LOADER/LEVEL LOADER 1.tscn")


func _on_MENU_released():
	get_tree().change_scene("res://title-screen.tscn")

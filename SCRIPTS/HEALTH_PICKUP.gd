extends StaticBody2D


export var add_health = 20


func _on_Area2D_body_entered(body):
	if body.has_method("take_health"):
		body.take_health(add_health) 
		queue_free()


func _on_Timer_timeout():
	queue_free()

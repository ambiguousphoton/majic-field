extends TouchScreenButton


var radius = Vector2(32,32)
var boundary = 200


var ongoing_drag = -1

var return_acc = 5

func _process(delta): 
	if ongoing_drag == -1:
		var pos_dif = (Vector2(0,0) - radius) - position
		position += pos_dif  * return_acc * delta
		

func get_button_position():
	return position + radius

func _input(event):
	if event is InputEventScreenDrag or (event is InputEventScreenTouch and event.is_pressed()):
		var evnt_dis_frm_centr = (event.position - get_parent().global_position).length()
		
		if evnt_dis_frm_centr <= boundary * global_scale.x or event.get_index() == ongoing_drag:
			set_global_position(event.position - radius * global_scale)
		
			if get_button_position().length() > boundary:
				set_position(get_button_position().normalized() * boundary - radius)
			
			ongoing_drag = event.get_index()
	
	
	if event is InputEventScreenTouch and !event.is_pressed() and event.get_index() ==  ongoing_drag:
		ongoing_drag = -1


func get_value():
	return get_button_position().normalized()

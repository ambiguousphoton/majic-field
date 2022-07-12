extends Control

#var player = load("res://Player.tscn")
#
#
#
#onready var multiplayer_config_ui = $multiplayer_configure
#onready var server_ip_address = $multiplayer_configure/SERVER_IP_ADDRESS
#
#onready var device_ip_address = $CanvasLayer/DEVICE_IP_ADDRESS
#
#func _ready():
#	get_tree().connect("network_peer_connected", self,"_player_connected")
#	get_tree().connect("network_peer_disconnected", self,"_player_disconnected")
#	get_tree().connect("connected_to_server", self, "connected_to_server" )
#
#	$device_ip_address.text = Network.ip_address
#
#func _player_connected(id) -> void:
#	print("Player" + str(id) + "has connected")
#
#	instance_player(id)
#
#func _player_disconnected(id) -> void:
#	print("Player" + str(id) + "has disconnected")
#	if Players.has_node(str(id)):
#		player.get_node(str(id)).queue_free()
#
#func _on_CREATE_SERVER_pressed():
##	multiplayer_config_ui.hide()
##	Network.create_server()
##
##
##
##	instance_player(get_tree().get_network_unique_id())
#	pass


func _on_JOIN_SERVER_pressed():
#	if server_ip_address.text != "":
#		multiplayer_config_ui.hide()
#		Network.ip_address = server_ip_address.text
#		Network.join_server()
	pass

#func _connected_to_server()  ->  void:
#	yield(get_tree().create_timer(0.1), "timeout")
#	instance_player(get_tree().get_network_unique_id())
#
#
#
#
#func instance_player(id) -> void:
#	var player_instance = Global.instance_node_at_location(player, Players , Vector2(rand_range(0,1020),rand_range(0,1080)))
#	player_instance.name = str(id)
#	player_instance.set_network_master(id)


func _on_MENU_pressed():

	get_tree().change_scene("res://title-screen.tscn")

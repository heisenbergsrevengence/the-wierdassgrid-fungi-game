extends Node
#this code is for the title screen, it opens the gm file and also redirects player to title screen
func _ready():
	DisplayServer.window_set_title("The bourgeoisie")
	get_tree().change_scene_to_file("res://path/to/main_menu.tscn")
	pass

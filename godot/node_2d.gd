extends Node
#this code is for the title screen, it opens the gm file and also redirects player to title screen
func _ready():
	var program_path = "/path/to/the/gamemakergame.exe"
	OS.execute(program_path, [])
	get_tree().change_scene_to_file("res://path/to/main_menu.tscn")

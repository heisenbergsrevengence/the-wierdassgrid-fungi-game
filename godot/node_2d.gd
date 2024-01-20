extends Node
#this code is for the title screen, it opens the gm file and also redirects player to title screen
func _ready():
	DisplayServer.window_set_title("The bourgeoisie")
	get_tree().change_scene_to_file("res://path/to/main_menu.tscn")
	await get_tree().create_timer(5).timeout # Display logo for 5 seconds
	get_node("Lgog").queue_free() # Delete the logo node then tell tileHolder to add its children to the scene
	get_node("TileHolder").addChildren()
	pass

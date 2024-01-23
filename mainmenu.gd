extends Node2D
func _on_button_button_up():
	get_tree().quit()


func _on_button_2_button_down():
	get_tree().change_scene_to_file("res://tutorial.tscn")


func _on_button_3_button_up():
	get_tree().change_scene_to_file("res://maingame.tscn")

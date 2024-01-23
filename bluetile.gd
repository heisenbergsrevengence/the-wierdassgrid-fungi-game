extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	z_index=3


func _on_button_toggled(button_pressed):#this checks in the button is selected
	print("bluetilebuttpressed")

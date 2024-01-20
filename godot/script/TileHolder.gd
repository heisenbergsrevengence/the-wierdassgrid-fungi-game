extends Node2D

var tile_tex_blue = load("res://Assets/bluetile.png") 
var child_array = []

# Generate a 6x6 grid of tiles
func _ready():
	var start_cord_x = 100;
	var start_cord_y = 100;
	
	for x in range(1,10):
		child_array.append([])
		for y in range(1,6):
			child_array[x-1].append(Sprite2D.new()) # Create a new Sprite2D.
			child_array[x-1][y-1].texture = tile_tex_blue # Set texture to preloaded texture
			child_array[x-1][y-1].position = Vector2(start_cord_x * x, start_cord_y * y)  # Set its pos
			child_array[x-1][y-1].name = "TILE_" + str(x, "_", y)
			child_array[x-1][y-1].scale.x = 0.02 # Set scaling so they display correctly 
			child_array[x-1][y-1].scale.y = 0.02
	pass
	
# Add precreated nodes onot the scene
func addChildren():
	for i in child_array.size():
		for j  in child_array[i].size():
			add_child(child_array[i][j]) 
	pass

# Get vec2 of a tile in the grid using grid coords
func getTilePos(gridX: int, gridY: int) -> Vector2:
	return child_array[gridX][gridY].position

# Currently unused
func _process(delta):
	pass

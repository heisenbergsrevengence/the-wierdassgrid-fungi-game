extends Node2D

var tile_tex = load("res://Assets/bluetile.png") 

# Generate a 6x6 grid of tiles
func _ready():
	
	var start_cord_x = 100;
	var start_cord_y = 100;
	
	for x in range(1,6):
		for y in range(1,6):
			var sprite2d = Sprite2D.new() # Create a new Sprite2D.
			sprite2d.texture = tile_tex
			sprite2d.position = Vector2(start_cord_x * x, start_cord_y * y)  
			sprite2d.name = "TILE_" + str(x, "_", y)
			sprite2d.scale.x = 0.01
			sprite2d.scale.y = 0.01
			add_child(sprite2d) # Add it as a child of this node
	
	pass


# Currently unused
func _process(delta):
	pass

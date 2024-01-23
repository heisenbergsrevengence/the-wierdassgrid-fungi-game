extends Node2D
#142 is the dist between the centres of the grid squares
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
var redball=0
func redballs(redballs):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var statertilespawned=load("res://bluetile.tscn")
	
func spawenr():#this spawns tiles that are connected to the other tiles on a 20%chance
	var tilepos=Vector2(141,141)
	if randi()%4 ==1:
		var tilespawned=load("res://bluetile.tscn").instantiate()
		tilespawned.position = $"firstgridshape2d(POINTER)".position+tilepos
		add_child(tilespawned)


func _on_button_pressed():#the end turn buttton
	spawenr()
		

extends Node2D
var c=0
func _process(delta):
	if c==1:
		$tuttext.text="this is a turn based strategy game,\nwhere you must stop the other mould from spreading"
	if c==2:
		$tuttext.text="and also get as many tiles as you can(the blue ones are yours)"
		$Bluetile.visible=true
	if c==3:
		$tuttext.text="every turn counts,so make sure \nuve done as much as you can before ending your turn"
	if c==4:
		$tuttext.text="every turn, the tiles u have have a prbabilty of spawning red balls"
		$RedBall.visible=true
		$RedBall.position=Vector2(1500+randi()%10,600+randi()%5)
	if c ==5:
		$tuttext.text="to gain more tiles,"
	if c==6:
		$tuttext.text="well,spend more redballs!"
		$RedBall.position=Vector2(1500+randi()%100,600+randi()%50)
	if c==7:
		$tuttext.text="for example\n spend redballs an empty tile \nthat is connected to the tiles that you have\n,and"
	if c==8:
		$tuttext.text="hope a new tile spawns!,\nthe more balls you put into that space, the more chance \n there is that a new tile will spawm"
	if c==9:
		$tuttext.text="but be aware, if your tiles touch the mould's tiles,"
		$RedTileGreen.visible=true
	if c==10:
		$tuttext.text="then they will be taken over!(and vice versa)"
		$RedTileGreen2.visible=true
	if c==11:
		$tuttext.text="BUT, you can defend yout tiles,by spending redballs on them\n,and so can the mould!(green means protected!)"
		$RedTileGreen2.visible=false
		$"Bluetile-Copy".visible=true
	if c==12:
		$tuttext.text="thats it for now!"
	if c==13:
		$tuttext.text="HAVE FUN"
		$Bluetile.visible=false
		$tuttext.position=Vector2(265+randi()%100,327+randi()%50)
		$RedBall.position=Vector2(1500+randi()%100,600+randi()%50)
		$"Bluetile-Copy".position=Vector2(800+randi()%100,608+randi()%50)
		$RedTileGreen.position=Vector2(664+randi()%100,608+randi()%50)
	if c==-1:
		get_tree().change_scene_to_file("res://mainmenu.tscn")
func _on_button_button_down():
	c+=1


func _on_button_2_button_up():
	c-=1

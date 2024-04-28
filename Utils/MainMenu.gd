extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	var width = get_viewport_rect().size[0]
	var height = get_viewport_rect().size[1]
	
	position.x = width/2.1
	position.y = height/2.1



func _on_levelselect_pressed():
	get_tree().change_scene_to_file("res://MainScene/level_select.tscn")

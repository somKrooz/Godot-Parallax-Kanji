extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	var width = get_viewport_rect().size[0]
	var height = get_viewport_rect().size[1]
	
	position.x = width/2.5
	position.y = height/2.5




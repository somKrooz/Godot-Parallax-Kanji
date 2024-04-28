extends ParallaxBackground
@onready var loop = $"../loop"
@export var speed = 20000.0

var direction = Vector2.RIGHT
# Called when the node enters the scene tree for the first time.
func _ready():
	loop.play()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_base_offset += (speed * direction) * delta


extends Button

@onready var click_sound = $"../Click-Sound"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_pressed():
	Screenfade.kroozer("res://MainScene/level_select.tscn")
	click_sound.play()


extends GridContainer

@onready var click_sound = $"../click-Sound"
@onready var exit_sound = $"../exit-Sound"

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Krooz")


func _on_level_1_pressed():
	click_sound.play()
	Screenfade.kroozer("res://Scene/hollow_forest.tscn")


func _on_level_2_pressed():
	click_sound.play()
	Screenfade.kroozer("res://Scene/grass_land.tscn")


func _on_level_3_pressed():
	click_sound.play()
	Screenfade.kroozer("res://Scene/pine_land.tscn")


func _on_level_4_pressed():
	click_sound.play()
	Screenfade.kroozer("res://Scene/grassland.tscn")


func _on_button_2_pressed():
	get_tree().quit()

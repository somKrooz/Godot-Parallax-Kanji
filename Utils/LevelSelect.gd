extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Krooz")


func _on_level_1_pressed():
	Screenfade.kroozer("res://Scene/hollow_forest.tscn")


func _on_level_2_pressed():
	Screenfade.kroozer("res://Scene/grass_land.tscn")


func _on_level_3_pressed():
	Screenfade.kroozer("res://Scene/pine_land.tscn")


func _on_level_4_pressed():
	Screenfade.kroozer("res://Scene/grassland.tscn")

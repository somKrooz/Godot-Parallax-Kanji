extends CanvasLayer
@onready var timer = $Timer
@onready var color_rect = $ColorRect
@onready var animation_player = $AnimationPlayer

func _ready():
	color_rect.visible = false

func kroozer(target):
	color_rect.visible = true
	animation_player.play("fade-in")
	await animation_player.animation_finished
	get_tree().change_scene_to_file(target)
	animation_player.play("fade-out")
	timer.start()

func _on_timer_timeout():
	color_rect.visible = false

extends Label

# You need to connect to the `request_completed` signal of `http_request` not `$"../HTTPRequest"`
@onready var http_request = $"../HTTPRequest"
@onready var timer = $"../Timer"
@onready var grade_label = $"../Grade-Label"

var base = "https://kanjiapi.dev/v1/kanji/"
var Kanji = "grade-1"

var mainUrl = base+Kanji
var current_texture_index = 0
func _ready():
	http_request.request_completed.connect(_on_request_completed)
	http_request.request(mainUrl)
	timer.start()

func _on_request_completed(result, response_code, headers, body):
	var data = JSON.parse_string(body.get_string_from_utf8())
	var random_number = randi_range(0, (data.size()-1))
	self.text = data[random_number]
	

func _on_timer_timeout():
	http_request.request_completed.connect(_on_request_completed)
	http_request.request(mainUrl)
	

func _on_grade_1_pressed():
	print("grade-1")
	timer.stop()
	Kanji = "grade-1"
	grade_label.text = "Grade - 1"
	mainUrl = base + Kanji
	timer.start()


func _on_grade_2_pressed():
	print("grade-2")
	timer.stop()
	Kanji = "grade-2"
	grade_label.text = "Grade - 2"
	mainUrl = base + Kanji
	timer.start()


func _on_grade_3_pressed():
	print("grade-3")
	timer.stop()
	Kanji = "grade-3"
	grade_label.text = "Grade - 3"
	mainUrl = base + Kanji
	timer.start()


func _on_grade_4_pressed():
	print("grade-4")
	timer.stop()
	Kanji = "grade-4"
	grade_label.text = "Grade - 4"
	mainUrl = base + Kanji
	timer.start()


func _on_grade_5_pressed():
	print("grade-5")
	timer.stop()
	Kanji = "grade-5"
	grade_label.text = "Grade - 5"
	mainUrl = base + Kanji
	timer.start()


func _on_grade_6_pressed():
	print("grade-6")
	timer.stop()
	Kanji = "grade-6"
	grade_label.text = "Grade - 6"
	mainUrl = base + Kanji
	timer.start()


func _on_grade_7_pressed():
	print("grade-7")
	timer.stop()
	Kanji = "grade-7"
	grade_label.text = "Grade - 7"
	mainUrl = base + Kanji
	timer.start()


func _on_grade_8_pressed():
	print("grade-8")
	timer.stop()
	Kanji = "grade-8"
	grade_label.text = "Grade - 8"
	mainUrl = base + Kanji
	timer.start()

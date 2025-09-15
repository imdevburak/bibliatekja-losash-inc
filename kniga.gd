extends Control
@export var knigi : Dictionary[String,String]

@export var redkie_knigi : Dictionary[String,String]

@export var nujniy_kniga_text : String

@export var button : Button

var oblojki = ["res://oblojka.jpeg","res://oblojka2.jpeg","res://oblojka3.jpeg","res://oblojka4.jpeg"]

func _on_button_pressed() -> void:
	genetate_text()

func genetate_text():
	var previous_text = button.text
	
	if randi_range(1,100) == 100:
		
		button.text = redkie_knigi.keys().pick_random()
	else:
		button.text = knigi.keys().pick_random()
	
	if button.text == previous_text:
		genetate_text()
	$TextureRect.texture = load(oblojki[randi_range(0,oblojki.size()-1)])



func _on_button_2_pressed() -> void:
	if knigi.has(button.text):
		button.text = knigi[button.text]
	if redkie_knigi.has(button.text):
		button.text = redkie_knigi[button.text]
	
	$TextureRect.texture = load("res://paper.jpeg")
	

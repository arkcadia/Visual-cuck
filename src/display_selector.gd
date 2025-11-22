extends Control

var modes = ["Window", "Fullscreen"]
var current_index = 0

@onready var left_arrow = $LeftArrow
@onready var right_arrow = $RightArrow
@onready var display_label = $"Label_Display"

func _ready():
	left_arrow.pressed.connect(_on_left_arrow_pressed)
	right_arrow.pressed.connect(_on_right_arrow_pressed)

	update_display()


func _on_left_arrow_pressed():
	current_index -= 1
	if current_index < 0:
		current_index = modes.size() - 1
	update_display()


func _on_right_arrow_pressed():
	current_index += 1
	if current_index >= modes.size():
		current_index = 0
	update_display()


func update_display():
	display_label.text = modes[current_index]

	
	match modes[current_index]:
		"Window":
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		"Fullscreen":
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

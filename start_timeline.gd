extends Control

func _ready() -> void:
	Dialogic.signal_event.connect(_input)

# Called when the node enters the scene tree for the first time.
func _input(event: InputEvent) -> void:
	# check if a dialog is already running
	if Dialogic.current_timeline != null:
		return

	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Dialogic.start('Chapter_1')
		get_viewport().set_input_as_handled()
	

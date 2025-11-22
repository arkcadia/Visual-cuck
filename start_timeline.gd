extends Control

func _ready() -> void:
	Dialogic.signal_event.connect(_input)

# Called when the node enters the scene tree for the first time.
func _input(event: InputEvent) -> void:
	# check if a dialog is already running
	if Dialogic.current_timeline != null:
		return

	if event is InputEventKey and event.keycode == KEY_ENTER and event.pressed:
		Dialogic.start('chapter1')
		get_viewport().set_input_as_handled()
	
	

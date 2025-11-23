extends Control

func _ready() -> void:
	Dialogic.signal_event.connect(_input)
	Dialogic.timeline_ended.connect(_on_timeline_ended)

# Called when the node enters the scene tree for the first time.
func _input(_event: InputEvent) -> void:
	# check if a dialog is already running
	if Dialogic.current_timeline != null:
		return
	if Dialogic.current_timeline == null:
		Dialogic.start(Global.chapter_name)
		get_viewport().set_input_as_handled()

func _on_timeline_ended():
	Dialogic.timeline_ended.disconnect(_on_timeline_ended)
	get_tree().change_scene_to_file("res://project/menu/main.tscn")

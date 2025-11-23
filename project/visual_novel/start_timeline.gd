extends Control

func _ready() -> void:
	Dialogic.signal_event.connect(_input)
	Dialogic.timeline_ended.connect(_on_timeline_ended)


func _input(_event: InputEvent) -> void:
	if Global.start_cutscene:
		call_deferred("_do_cutscene")
		return
	
	if Dialogic.current_timeline != null:
		return
	
	Dialogic.start(Global.chapter_name)
	Global.go_to_menu = true
	get_viewport().set_input_as_handled()

func _on_timeline_ended():
	if Dialogic.timeline_ended.is_connected(_on_timeline_ended):
		Dialogic.timeline_ended.disconnect(_on_timeline_ended)
	if Global.go_to_menu:
		get_tree().change_scene_to_file("res://project/menu/main.tscn")

func _do_cutscene():
	Global.start_cutscene = false
	get_tree().change_scene_to_file("res://project/visual_novel/cutscene.tscn")

extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://project/visual_novel/storyline.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_load_game_pressed() -> void:
	get_tree().change_scene_to_file("res://project/visual_novel/storyline.tscn")

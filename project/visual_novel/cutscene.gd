extends VideoStreamPlayer

func _ready() -> void:
	pass
func _process(_delta: float) -> void:
	if !is_playing():
		Global.chapter_name = "kirby_verse_suite"
		get_tree().change_scene_to_file("res://project/visual_novel/storyline.tscn")

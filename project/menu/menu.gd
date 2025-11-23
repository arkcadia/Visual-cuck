extends Control

@onready var display_menu = $DisplaySelector
@onready var settings_button = $MainContain/SettingsButton
@onready var music_player = $MusicPlayer
@onready var volume_slider = $DisplaySelector/VolumeSlider
@onready var main_menu = $MainContain
@onready var title = $Title
@onready var endings = $Endings
@onready var endings2 = $Endings2
@onready var chapters_menu = $Chapters_menu
@onready var credits_label = $credits_label
@onready var back_about = $back_about
var settings_open = false

func _ready():
	display_menu.visible = false
	volume_slider.value = db_to_linear(music_player.volume_db) * 100.0
	music_player.play()

func _on_settings_button_pressed():
	display_menu.visible = !display_menu.visible 
	settings_open = !settings_open

func _on_h_slider_value_changed(value: float) -> void:
	var db_value = linear_to_db(value / 100.0)
	music_player.volume_db = db_value

func _on_ending_pressed() -> void:
	main_menu.visible = !main_menu.visible
	title.visible = !title.visible
	if (settings_open == true):
		display_menu.visible = !display_menu.visible
		settings_open = false
	endings.visible = !endings.visible

func _on_quit_pressed() -> void:
	_on_ending_pressed()

func _on_next_pressed() -> void:
	endings2.visible = !endings2.visible
	endings.visible = !endings.visible

func _on_previous_pressed() -> void:
	_on_next_pressed()

func _on_load_chapter_pressed() -> void:
	main_menu.visible = !main_menu.visible
	title.visible = !title.visible
	if (settings_open == true):
		display_menu.visible = !display_menu.visible
		settings_open = false
	chapters_menu.visible = !chapters_menu.visible

func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://project/visual_novel/storyline.tscn")

func _on_chapter_1_pressed() -> void:
	Global.chapter_name = "Chapter_1"
	_on_new_game_pressed()

func _on_chapter_2_pressed() -> void:
	Global.chapter_name = "Chapter_2"
	_on_new_game_pressed()

func _on_chapter_3_pressed() -> void:
	Global.chapter_name = "Chapter_3"
	_on_new_game_pressed()
	
func _on_chapter_4_pressed() -> void:
	Global.chapter_name = "Chapter_4"
	_on_new_game_pressed()

func _on_chapter_brazil_pressed() -> void:
	Global.chapter_name = "Brazil_Chapter"
	_on_new_game_pressed()

func _on_chapter_mortadon_pressed() -> void:
	Global.chapter_name = "Combat_mortadon"
	_on_new_game_pressed()

func _on_chapter_gayttouzz_pressed() -> void:
	Global.chapter_name = "Gayttouze_Chapter"
	_on_new_game_pressed()

func _on_chapter_trump_pressed() -> void:
	Global.chapter_name = "Trump_Chapter"
	_on_new_game_pressed()

func _on_chapter_minotaure_pressed() -> void:
	Global.chapter_name = "Kirby_verse"
	_on_new_game_pressed()

func _on_back_button_pressed() -> void:
	_on_load_chapter_pressed()

func _on_about_pressed() -> void:
	main_menu.visible = !main_menu.visible
	title.visible = !title.visible
	if (settings_open == true):
		display_menu.visible = !display_menu.visible
		settings_open = false
	credits_label.show()
	back_about.visible = !back_about.visible

func _on_back_about_pressed() -> void:
	_on_about_pressed()
	credits_label.hide()

extends Control

@onready var display_menu = $DisplaySelector
@onready var settings_button = $MainContain/SettingsButton
@onready var music_player = $MusicPlayer
@onready var volume_slider = $DisplaySelector/VolumeSlider
@onready var main_menu = $MainContain
@onready var title = $Title
@onready var endings = $Endings
@onready var endings2 = $Endings2
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

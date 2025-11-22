extends Control

@onready var display_menu = $DisplaySelector
@onready var settings_button = $MainContain/SettingsButton

var settings_open = false

func _ready():
	display_menu.visible = false

func _on_settings_button_pressed():
	display_menu.visible = !display_menu.visible 

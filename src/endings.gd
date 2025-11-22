extends Control
@onready var myster1 = $mystery1
@onready var ending1 = $Ending1
@onready var myster2 = $mystery2
@onready var ending2 = $Ending2
@onready var myster3 = $mystery3
@onready var ending3 = $Ending3
@onready var myster4 = $mystery4
@onready var ending4 = $Ending4
@onready var myster5 = $mystery5
@onready var ending5 = $Ending6
@onready var myster6 = $mystery6
@onready var ending6 = $Ending6

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ending1.hide()
	ending2.hide()
	ending3.hide()
	ending4.hide()
	ending5.hide()
	ending6.hide()
	if (Global.sock_ending == true) :
		myster1.hide()
		ending1.show()
	if (Global.mortadon_ending == true) :
		myster2.hide()
		ending2.show()
	if (Global.main_ending == true) :
		myster3.hide()
		ending3.show()
	if (Global.big_fish== true) :
		myster4.hide()
		ending4.show()
	if (Global.minotaure_ending== true) :
		myster5.hide()
		ending5.show()
	if (Global.gayttouz_ending== true) :
		myster6.hide()
		ending6.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.

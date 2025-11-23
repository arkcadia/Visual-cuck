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
@onready var myster7 = $"../Endings2/mystery7"
@onready var ending7 = $"../Endings2/Ending7"
@onready var myster8 = $"../Endings2/mystery8"
@onready var ending8 = $"../Endings2/Ending8"

func _ready() -> void:
	ending1.hide()
	ending2.hide()
	ending3.hide()
	ending4.hide()
	ending5.hide()
	ending6.hide()
	ending7.hide()
	ending8.hide()
	if (Global.sock_ending == true) :
		myster1.hide()
		ending1.show()
	if (Global.big_fish == true) :
		myster2.hide()
		ending2.show()
	if (Global.main_ending_spiderman == true) :
		myster3.hide()
		ending3.show()
	if (Global.main_ending_ssj== true) :
		myster4.hide()
		ending4.show()
	if (Global.minotaure_ending== true) :
		myster5.hide()
		ending5.show()
	if (Global.feat_asterion== true) :
		myster6.hide()
		ending6.show()
	if (Global.gayttouz_ending== true) :
		myster7.hide()
		ending7.show()
	if (Global.trump_ending== true) :
		myster8.hide()
		ending8.show()

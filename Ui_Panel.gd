extends Control


@onready var score_label = $MarginContainer/HBoxContainer/Score

var score = "Ahoj jak se máš, teď je odpolende":
	set(new_score):
		score = new_score
		_update_score_label()
		
func _ready():
	_update_score_label()
		
		
func _update_score_label():
	score_label.text = str(score)

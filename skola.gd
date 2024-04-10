extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.skola1 == false):
		Dialogic.start("res://skolaFirst.dtl")
		Global.skola1 = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

###exit###
func _on_skola_2_exit_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().change_scene_to_file("res://map.tscn")
###exit###

###enter###
func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().change_scene_to_file("res://hallwaySchool.tscn")
###enter###



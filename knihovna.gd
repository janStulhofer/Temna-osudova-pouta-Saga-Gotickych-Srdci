extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.knihovna == false):
		Dialogic.start("res://Assets/Map/School/knihovnaDialog.dtl")
		Global.knihovna = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_input_event(viewport, event, shape_idx):
	get_tree().change_scene_to_file("res://hallwaySchool.tscn")

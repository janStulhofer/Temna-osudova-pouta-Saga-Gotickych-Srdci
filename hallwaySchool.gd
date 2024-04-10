extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.skola2 == false):
		Dialogic.start("res://Assets/Map/School/skolaInsideFirst.dtl")
		Global.skola2 = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().change_scene_to_file("res://skola.tscn")


func _on_class_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().change_scene_to_file("res://knihovna.tscn")

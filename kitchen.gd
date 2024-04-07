extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

###STIN###
func _on_hallway_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().change_scene_to_file("res://chodba.tscn")


func _on_hallway_mouse_entered():
	$kitchenShadow.visible = true



func _on_hallway_mouse_exited():
	$kitchenShadow.visible = false

###STIN###

###FOOD###
func _on_food_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			Dialogic.start("res://Assets/Characters/MC/Food.dtl")


func _on_food_mouse_entered():
	$foodShadow.visible = true
	$food.modulate = Color(1.8, 1.8, 1.8)


func _on_food_mouse_exited():
	$foodShadow.visible = false
	$food.modulate = Color(1, 1, 1)
###FOOD###

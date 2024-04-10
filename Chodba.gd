extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass

###BEDROOM####
func _on_pokoj_mouse_entered():
    $door2shadow.visible = true
    $door2.modulate = Color(1.8, 1.8, 1.8)


func _on_pokoj_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
        if event.pressed:
            get_tree().change_scene_to_file("res://bedroom.tscn")


func _on_pokoj_mouse_exited():
    $door2shadow.visible = false
    $door2.modulate = Color(1, 1, 1)

###BEDROOM###

func _on_area_2d_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
        if event.pressed:
            get_tree().change_scene_to_file("res://map.tscn")

###DOOR3###
func _on_door_3_mouse_entered():
    $door3shadow.visible = true
    $door3.modulate = Color(1.8, 1.8, 1.8)


func _on_door_3_mouse_exited():
    $door3shadow.visible = false
    $door3.modulate = Color(1, 1, 1)


func _on_door_3_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
        if event.pressed:
            get_tree().change_scene_to_file("res://kitchen.tscn")

###DOOR3###

###DOOR1###
func _on_door_1_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
        if event.pressed:
            get_tree().change_scene_to_file("res://map.tscn")

func _on_door_1_mouse_entered():
    $door1shadow.visible = true
    $door1.modulate = Color(1.8, 1.8, 1.8)


func _on_door_1_mouse_exited():
    $door1shadow.visible = false
    $door1.modulate = Color(1, 1, 1)

###DOOR1###

###PLANT###
func _on_plan_tarea_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
        if event.pressed:
            Dialogic.start("res://PlantDialog.dtl")


func _on_plan_tarea_mouse_entered():
    $plantShadow.visible = true
    $plant.modulate = Color(1.4, 1.4, 1.4)


func _on_plan_tarea_mouse_exited():
    $plantShadow.visible = false
    $plant.modulate = Color(1, 1, 1)
###PLANT###

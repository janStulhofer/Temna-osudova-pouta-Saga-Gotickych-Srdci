extends Node2D

#var selected = false

####EXIT####
func _on_exit_mouse_entered():
	$StinVystup.visible = true

func _on_exit_mouse_exited():
	$StinVystup.visible = false

func _on_exit_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().quit() #ZMĚNIT SCÉNU**********
####EXIT####

####PC####
func _on_area_pc_mouse_entered():
	$PCShadow2.visible = true
	$PCOver.modulate = Color(1.8, 1.8, 1.8)
	#$PCShadow2.set_z_index(0)

func _on_area_pc_mouse_exited():
	$PCShadow2.visible = false
	$PCOver.modulate = Color(1, 1, 1)

func _on_area_pc_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().change_scene_to_file("res://Assets/Map/Home/Bedroom/PCDesktop/PCDesktop.tscn")

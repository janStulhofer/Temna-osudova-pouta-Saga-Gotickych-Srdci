extends Node2D


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().change_scene_to_file("res://bedroom.tscn")


func _on_status_ar_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			$CanvasLayer/rspointStatus.visible = true
			#$CanvasLayer/rspointStatus/Container.visible = true


func _on_cls_ar_2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			$CanvasLayer/rspointStatus.visible = false

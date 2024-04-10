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
			$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1.visible = false


func _on_quest_ar_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1.visible = true
			if(Global.skola1 == false and Global.skola2 == false and Global.knihovna == false):
				$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1/Label.visible = true
	
			if(Global.skola1 == true and Global.skola2 == false and Global.knihovna == false):
				$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1/Label2.visible = true
				$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1/Label.visible = false
				
	
			if(Global.skola1 == true and Global.skola2 == true and Global.knihovna == false):
				$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1/Label2.visible = false
				$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1/Label3.visible = true
	
			if(Global.skola1 == true and Global.skola2 == true and Global.knihovna == true):
				$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1/Label3.visible = false
				$CanvasLayer/questGuide/Container/CanvasLayer/Sprite2D1/Label4.visible = true 

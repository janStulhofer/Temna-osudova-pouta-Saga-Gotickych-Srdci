extends Node2D

var selected = false

####EXIT####
func _on_exit_mouse_entered():
	$StinVystup.visible = true
	
	pass # Exittt Replace with function body.

func _on_exit_mouse_exited():
	$StinVystup.visible = false
	pass # Replace with function body.

func _on_exit_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			get_tree().quit() #ZMĚNIT SCÉNU**********
	
	 # Replace with function body.
####EXIT####

####PC####
func _on_area_pc_mouse_entered():
	pass # PCCC Replace with function body.





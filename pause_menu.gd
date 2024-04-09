extends Control



func resume():
	get_tree().paused = false
	$PanelContainer.visible = false

	

func pause():
	get_tree().paused = true
	$PanelContainer.visible = true

func testEsc():
	if Input.is_action_just_pressed("esc") and !get_tree().paused:
		#print("esc funguje")
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()

func _on_resume_pressed():
	resume()

func _on_options_pressed():
	#resume()
	#get tree s nastavenim
	pass # Replace with function body.

func _on_main_menu_pressed():
	resume()
	get_tree().change_scene_to_file("res://node_2d.tscn")

func _process(delta):
	testEsc()

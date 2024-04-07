extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	Global.jmeno = "jmeno"
	SceneTransition.change_scene("res://intro.tscn", "Dissolve", "Back")
	#get_tree().change_scene_to_file("pretahnout scenu hry => prvni scena")

func _on_options_button_pressed():
	print(Global.jmeno)
	pass
	#var options = load("scena nastaveni => zobrazovat jako popup v main menu").instance()
	#get_tree().current_scene.add_child(options)


func _on_quit_button_pressed():
	get_tree().quit()

extends Node

var target_scene : String

func _ready():
	$Timer.wait_time = 0.5
	$Timer.start()
	pass


	
func change_scene(target_scene_name: String, animation_name: String):
	# Uložení názvu cílové scény
	target_scene = target_scene_name

	# Přehrávání animace pomocí AnimationPlayer
	$AnimationPlayer.play(animation_name)

	# Přidání signálu, který zavolá funkci po skončení animace
	
	

func hulDyk():
	if($Timer.)

func _on_Timer_timeout():
	get_tree().change_scene(target_scene)

extends Node

var target_scene : String

func change_scene(target_scene_name, animation_name: String, animation_name_back: String):
	target_scene = target_scene_name
	$Timer.start()
	$AnimationPlayer.play("Dissolve")


func _on_timer_timeout():
	get_tree().change_scene_to_file(target_scene)
	$AnimationPlayer.play("Back")

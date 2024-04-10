extends Node2D

func _ready():
	Dialogic.start("res://Assets/Dialogue/Timelines/timeline1.dtl")
	#Dialogic.VAR.jmeno
	#if(Dialogic.timeline_ended):
	#	print(Dialogic.VAR.jmeno)
	Dialogic.timeline_ended.connect(ended)
	Global.rspoint = 1

func ended():
	Dialogic.timeline_ended.disconnect(ended)
	print(Dialogic.VAR.jmeno)
	var jmeno = Dialogic.VAR.jmeno
	SceneTransition.change_scene("res://bedroom.tscn", "Dissolve", "Back")


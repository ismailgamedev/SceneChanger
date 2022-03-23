extends Node

onready var fade = preload("res://addons/change_scene/Fade.tscn")

var fade_instance
var scene_changed = false

func _ready():
	fade_instance = fade.instance()
	add_child(fade_instance)
	fade_instance._play_backward()
	
func change_scene(scene_path : String):
	if scene_changed == false:
		fade_instance._play()
		scene_changed = true
		yield(get_tree().create_timer(0.31),"timeout")
		get_tree().change_scene(scene_path)
		yield(get_tree().create_timer(0.1),"timeout")
		fade_instance._play_backward()
		yield(get_tree().create_timer(0.31),"timeout")
		scene_changed = false


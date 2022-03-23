tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("ChangeScene","res://addons/change_scene/change_scene.gd")


func _exit_tree():
	remove_autoload_singleton("ChangeScene")

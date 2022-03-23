extends Node2D


func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		ChangeScene.change_scene("res://addons/change_scene/example/Scene2.tscn")

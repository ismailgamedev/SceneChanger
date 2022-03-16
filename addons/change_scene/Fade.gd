extends CanvasLayer

func _play():
	get_node("AnimationPlayer").play("fade")

func _play_backward():
	get_node("AnimationPlayer").play_backwards("fade")

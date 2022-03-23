extends CanvasLayer

func _ready():
	var size = ProjectSettings.get_setting("display/window/size/height") * 2
	$AnimationPlayer.get_animation("fade").track_set_key_value(0,0,size)

func _play():
	get_node("AnimationPlayer").play("fade")

func _play_backward():
	get_node("AnimationPlayer").play_backwards("fade")

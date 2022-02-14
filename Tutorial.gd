extends Node

func _process(delta):
	get_node("Parallax").scroll_base_offset += Vector2(-1,0) * 250 * delta

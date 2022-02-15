extends Node

var parallax_mov : bool = true

func _process(delta):
	if parallax_mov:
		get_node("Parallax").scroll_base_offset += Vector2(-1,0) * 250 * delta


func _on_Escape_pressed():
	parallax_mov = false

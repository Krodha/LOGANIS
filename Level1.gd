extends Node

var parallax_mov : bool = true

func _ready():
	$BGmusic.play()

func _process(delta):
	if parallax_mov:
		get_node("FONDO 3").scroll_base_offset += Vector2(-1,0) * 16 * delta
		get_node("FONDO 2").scroll_base_offset += Vector2(-2,0) * 48 * delta
		get_node("FONDO 1").scroll_base_offset += Vector2(-3,0) * 96 * delta
		get_node("CAMINO").scroll_base_offset += Vector2(-4,0) * 100 * delta

func _on_HUD_escape():
	parallax_mov = false
	$BGmusic.stop()


func _on_Player_perder():
	parallax_mov = false
	$BGmusic.stop()
	yield(get_tree().create_timer(1.0), "timeout")
	get_tree().call_deferred("reload_current_scene")

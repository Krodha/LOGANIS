extends Node


var parallax_mov : bool = true

func _ready():
	if parallax_mov:
		yield(get_tree().create_timer(3.0), "timeout")
		$Ola.visible = false
		$Tuto.visible = true
		yield(get_tree().create_timer(4.5), "timeout")
		$Tuto.visible = false
		$Fin.visible = true
		yield(get_tree().create_timer(2.0), "timeout")
		$Fin.visible = false
		$Dificil.visible = true
		yield(get_tree().create_timer(2.5), "timeout")
		$Dificil.visible = false
		$Carneiro.visible = true
		yield(get_tree().create_timer(4.0), "timeout")
		$Carneiro.visible = false

func _process(delta):
	if parallax_mov:
		get_node("Parallax").scroll_base_offset += Vector2(-1,0) * 250 * delta


func _on_Escape_pressed():
	parallax_mov = false

func _on_CRUCES_body_entered(body):
	if body is KinematicBody2D:
		parallax_mov = false
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().call_deferred("reload_current_scene")


func _on_Player_perder():
	parallax_mov = false
	yield(get_tree().create_timer(1.0), "timeout")
	get_tree().call_deferred("change_scene", "res://Choose_Level.tscn")


func _on_HUD_escape():
	parallax_mov = false

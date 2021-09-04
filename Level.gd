extends Node

func _ready():
	$BGmusic.play()

func _process(delta):
	get_node("FONDO 3").scroll_base_offset += Vector2(-1,0) * 16 * delta
	get_node("FONDO 2").scroll_base_offset += Vector2(-2,0) * 48 * delta
	get_node("FONDO 1").scroll_base_offset += Vector2(-3,0) * 96 * delta
	get_node("CAMINO").scroll_base_offset += Vector2(-4,0) * 100 * delta

func _on_HUD_perder():
	get_tree().call_deferred("reload_current_scene")
	$Perder.play()
	$BGmusic.stop()

func _on_Escape_pressed():
	$BGmusic.stop()
	

func _on_Area2D_body_entered(Player):
	emit_signal("perder")

	"""
		DIRECTOR:
			Lucas 
		
		DESARROLLADOR:
			Cruces
		
		DISEÑADOR GRÁFICO:
			Fernández
		
		AGRADECIMIENTOS A:
			8 Bit Universe por su música en 8 bits
		
		"""


extends Node



func _ready():
	$BGmusic.play()

func _process(delta):
	get_node("FONDO 3").scroll_base_offset += Vector2(-1,0) * 16 * delta
	get_node("FONDO 2").scroll_base_offset += Vector2(-2,0) * 48 * delta
	get_node("FONDO 1").scroll_base_offset += Vector2(-3,0) * 96 * delta
	get_node("CAMINO").scroll_base_offset += Vector2(-4,0) * 100 * delta

func _on_Escape_pressed():
	$BGmusic.stop()


"""
	DIRECTOR:
	Lucas 
	
	DESARROLLADOR:
		Cruces
	
	DESEÑADOR GRÁFICO:
		Fernández
	
	AGRADECEMENTOS A:
		8 Bit Universe pola súa música en 8 bits
	"""


func _on_Player_perder():
	get_tree().call_deferred("reload_current_scene")






func _on_Fin_body_entered(body):
	if body is KinematicBody2D:
		get_tree().call_deferred("change_scene", "res://Menú.tscn")


func _on_CRUCES_body_entered(body):
	if body is KinematicBody2D:
		get_tree().call_deferred("reload_current_scene")


func _on_ESQUELETO_body_entered(body):
	if body is KinematicBody2D:
		get_tree().call_deferred("reload_current_scene")


func _on_ESQUELETO2_body_entered(body):
	if body is KinematicBody2D:
		get_tree().call_deferred("reload_current_scene")

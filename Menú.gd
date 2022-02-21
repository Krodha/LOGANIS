extends Node

func _ready():
	$Fondo.play()
	$Personaje.play()
	$Bgmusic.play()

func _on_Viciar_pressed():
	$Click.play()
	get_tree().call_deferred("change_scene","res://Choose_Level.tscn")

func _on_Salir_pressed():
	get_tree().quit()
	$Click.play()

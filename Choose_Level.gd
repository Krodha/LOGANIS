extends Node



func _on_Atras_pressed():
	get_tree().call("change_scene", "res://Menú.tscn")


func _on_Tutorial_pressed():
	get_tree().call("change_scene", "res://Tutorial.tscn")


func _on_Segundo_pressed():
	get_tree().call_deferred("change_scene", "res://Level.tscn")

func _on_Primero_pressed():
	get_tree().call_deferred("change_scene", "res://Level1.tscn")
	

extends Node



func _on_Button_pressed():
	get_tree().call_deferred("change_scene", "res://Level.tscn")

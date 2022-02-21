extends CanvasLayer

signal escape

func _on_Escape_pressed():
	$MiniMenu.visible = true
	get_tree().call_deferred("stop_scene","res://Level.tscn")
	emit_signal("escape")

func _on_menu_pressed():
	get_tree().call_deferred("change_scene","res://Menú.tscn")
	$Click.play()


func _on_reanudar_pressed():
	get_tree().call_deferred("reload_current_scene")
	$Click.play()


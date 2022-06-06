extends CanvasLayer

signal escape

func _on_Escape_pressed():
	$Click.play()
	$MiniMenu.visible = true
	emit_signal("escape")

func _on_menu_pressed():
	get_tree().call_deferred("change_scene","res://Menú.tscn")
	$Click.play()


func _on_reanudar_pressed():
	$Click.play()
	get_tree().call_deferred("reload_current_scene")

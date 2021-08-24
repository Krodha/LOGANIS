extends CanvasLayer

signal perder

func perder():
	emit_signal("perder")
	$Perder.play()


func _on_Player_tree_exiting():
	perder()


func _on_Escape_pressed():
	$MiniMenu.visible = true
	get_tree().call_deferred("stop_scene","res://Level.tscn")

func _on_menu_pressed():
	get_tree().call_deferred("change_scene","res://Menú.tscn")
	$Click.play()



func _on_reanudar_pressed():
	get_tree().call_deferred("reload_current_scene")
	$Click.play()

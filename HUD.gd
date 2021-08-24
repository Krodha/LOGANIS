extends CanvasLayer

signal perder

func perder():
	emit_signal("perder")
	$Perder.play()


func _on_Player_tree_exiting():
	perder()


func _on_Escape_pressed():
	$MiniMenu.visible = true
	


func _on_menu_pressed():
	get_tree().call_deferred("change_scene","res://Menú.tscn")



func _on_reanudar_pressed():
	get_tree().call_deferred("reload_current_scene")

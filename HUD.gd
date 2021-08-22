extends CanvasLayer

signal perder

func perder():
	emit_signal("perder")
	$Perder.play()
	$Label.visible = true
	$MENU.visible = true
	$REINTENTAR.visible = true

func _on_REINTENTAR_pressed():
	get_tree().call_deferred("reload_current_scene")
	$Click.play()

func _on_MENU_pressed():
	get_tree().call_deferred("change_scene","res://Menú.tscn")
	$Click.play()


func _on_Player_tree_exiting():
	perder()

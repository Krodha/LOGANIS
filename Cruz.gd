extends StaticBody2D


func _on_AreaCruz_body_entered(body):
	if body is KinematicBody2D:
		emit_signal("perder")

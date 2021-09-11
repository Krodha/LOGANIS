extends StaticBody2D

func _on_AreaLapida_body_entered(body):
	if body is KinematicBody2D:
		emit_signal("perder")

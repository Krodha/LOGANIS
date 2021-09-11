extends StaticBody2D

func _on_AreaSkeleto_body_entered(body):
	if body is KinematicBody2D:
		emit_signal("perder")

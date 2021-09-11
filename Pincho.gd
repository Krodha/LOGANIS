extends Area2D

func _on_Pincho_body_entered(body):
	if body is KinematicBody2D:
		emit_signal("perder")

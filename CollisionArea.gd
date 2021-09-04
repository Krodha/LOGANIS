extends Area2D

signal perder

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("perder")

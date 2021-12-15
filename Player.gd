extends KinematicBody2D

signal perder


export (int) var velocidad 

onready var movimiento : Vector2

onready var saltos : int

onready var can_jump : bool = true

const GRAVEDAD = Vector2(0,5)

const JUMP_HEIGHT = -450

const SUELO = Vector2(0,-1)



func _process(delta):
	
	_is_on_floor(delta)
	
	movimiento.x = velocidad
	
	



func _physics_process(delta):
	
	if $RayCastSuelo.is_colliding():
		saltos = 0
		can_jump = true
	
	if saltos == 1:
		can_jump = false
	
	if Input.is_action_just_pressed("space") and can_jump:
	
		movimiento.y += JUMP_HEIGHT
		saltos += 1



func _is_on_floor(delta):
	
	movimiento += GRAVEDAD * 200 * delta
	
	$AnimatedSprite.play()
	
	position += movimiento * delta
	
	movimiento = move_and_slide(movimiento, SUELO)
	
	# Estuve creando la variable de "saltos" para intentar limitar el Nº de saltos a 1 





func _on_Area2D_body_entered(body):
	if body.is_in_group("Obstaculo"):
		emit_signal("perder")
	if body.is_in_group("fin"):
		get_tree().call_deferred("change_scene", "res://Menú.tscn")

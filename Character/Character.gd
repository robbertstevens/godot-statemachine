extends KinematicBody2D

const SPEED = 100
const ACCELERATION = 100

func _on_Idle_entered_idle_state():
	$AnimationPlayer.play("idle")

func _on_Move_entered_move_state():
	$AnimationPlayer.play("move")

func _on_Move_changed_axis(axis, delta):
	var velocity = Vector2.ZERO
	velocity = velocity.move_toward(axis * SPEED, ACCELERATION * delta)
	
	move_and_collide(velocity)

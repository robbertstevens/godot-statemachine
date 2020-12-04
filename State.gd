extends Node2D

class_name State

onready var fsm = get_parent()

func enter():
	pass

func exit(new_state) -> void:
	fsm.change_to(new_state);

func back() -> void:
	fsm.back()

func process(_delta: float) -> void:
	pass
	
func physics_process(_delta: float) -> void:
	pass

func input(_event: InputEvent) -> void: 
	pass

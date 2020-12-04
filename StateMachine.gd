extends Node2D

class_name StateMachine

var current_state : State = null
var previous_state : State = null

func _ready() -> void:
	var first_child = get_child(0)
	
	assert(first_child is State)
	
	current_state = first_child
	_enter_state()

func change_to(new_state_name) -> void:
	var new_state = get_node(new_state_name)
	
	assert(new_state is State)
	
	previous_state = current_state
	current_state = new_state
	_enter_state()

func back() -> void:
	change_to(previous_state.name)
	
func _enter_state() -> void:
	current_state.enter()

func _physics_process(delta):
	current_state.physics_process(delta)

func _process(delta):
	current_state.process(delta)

func _input(event):
	current_state.input(event)

extends State

signal entered_move_state
signal changed_axis(axis, delta)

func enter() -> void:
	emit_signal("entered_move_state")
	
func process(_delta):
	var axis = get_input_axis()
	
	if axis == Vector2.ZERO:
		exit("Idle")
		
	emit_signal("changed_axis", axis, _delta)
	
func get_input_axis() -> Vector2:
	var axis = Vector2.ZERO
	axis.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	axis.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	return axis.normalized()
	

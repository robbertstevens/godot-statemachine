extends State

signal entered_idle_state

func enter(): 
	emit_signal("entered_idle_state")

func input(event: InputEvent):
	if (
		event.is_action("ui_right") || 
		event.is_action("ui_left") || 
		event.is_action("ui_up") || 
		event.is_action("ui_down")
	):
		exit("Move")
	

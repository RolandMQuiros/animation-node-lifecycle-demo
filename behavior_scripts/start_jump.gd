extends FSMBehavior

export var parameter: String = "parameters/"

func advance(delta: float):
	if Input.is_action_just_pressed("ui_select"):
		tree[parameter] = true

extends FSMBehavior

export var parameter: String = "parameters/"

func on_play(time: float):
	tree[parameter] = false

func advance(delta: float):
	if Input.is_action_just_pressed("punch"):
		tree[parameter] = true

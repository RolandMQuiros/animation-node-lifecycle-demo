extends FSMBehavior

export var parameter: String = "parameters/"

func on_play(time: float):
	tree[parameter] = false

extends FSMBehavior

export var parameter: String = "parameters/"
var wait: float = 0.0

func on_play(time: float):
	wait = 0.0

func advance(delta: float):
	wait += delta
	tree[parameter] = false
	if wait > 0.25: # stops the transition from happening immediately
					# would probably have an intermediate state irl but this is
					# fine for demo
		var floored = body.is_on_floor()
		tree[parameter] = floored

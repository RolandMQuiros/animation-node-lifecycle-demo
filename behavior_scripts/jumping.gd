extends FSMBehavior

export var jump_speed: float = 20
export var jump_parameter: String = "parameters/"

var jump_counter: float = 0

func on_play(time: float):
	jump_counter = jump_speed
	tree[jump_parameter] = false

func advance(delta: float):
	if jump_counter > 0:
		body_move += Vector3.UP * jump_counter
		jump_counter -= 9.8 * delta

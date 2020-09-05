extends FSMBehavior

export var acceleration: float = 9.8

var speed: float

func advance(delta: float):
	if body.is_on_floor():
		speed = 0
	else:
		speed += acceleration * delta
		body_move += Vector3.DOWN * speed

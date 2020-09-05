extends FSMBehavior

export var speed: float = 5.0
export var direction_parameter: String = "parameters/"

func advance(delta):
	var horizontal = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var vertical = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	var direction = Vector3(horizontal, 0, vertical)
	tree[direction_parameter] = abs(direction.dot(body.transform.basis.z))
	
	if direction != Vector3.ZERO:
		var rotation = Transform.IDENTITY.looking_at(direction, Vector3.UP).basis
		body.transform = Transform(rotation, body.transform.origin)
	
	body_move += direction * speed

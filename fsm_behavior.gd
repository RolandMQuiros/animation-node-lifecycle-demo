extends Resource
class_name FSMBehavior

var body: KinematicBody
var tree: AnimationTree

var body_move: Vector3 = Vector3.ZERO

func on_play(time: float):
	pass
	
func advance(delta: float):
	pass
	
func on_stop(delta: float):
	pass

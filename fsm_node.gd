extends AnimationNode
class_name FSMNode

export(Array, Resource) var behaviors: Array

var body: KinematicBody
var tree: AnimationTree

var fsm_behaviors: Array

func ready():
	for behavior in behaviors:
		var fsm_behavior = behavior as FSMBehavior
		if fsm_behavior != null:
			fsm_behavior.body = body
			fsm_behavior.tree = tree
			fsm_behaviors.append(fsm_behavior)

func _on_play(time: float):
	for behavior in fsm_behaviors:
		behavior.on_play(time)

func _advance(delta: float):
	apply_body_movement() # need is_on_floor to update properly
	for behavior in fsm_behaviors:
		behavior.advance(delta)

func _on_stop(time: float):
	for behavior in fsm_behaviors:
		behavior.on_stop(time)

func apply_body_movement():
	var total_move: Vector3 = Vector3.ZERO
	for behavior in fsm_behaviors:
		total_move += behavior.body_move
		behavior.body_move = Vector3.ZERO
	body.move_and_slide(total_move, Vector3.UP)

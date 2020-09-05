extends AnimationTree
class_name FSMTree

export var bodyNode: NodePath

var fsm_nodes: Array

func _enter_tree():
	var body : KinematicBody = get_node(bodyNode)
	
	# Inject dependencies
	var children = (tree_root as AnimationNode).child_nodes
	for child in children.values():
		var fsm_node = child as FSMNode
		if fsm_node != null:
			fsm_node.body = body
			fsm_node.tree = self
			fsm_node.ready()
			fsm_nodes.append(fsm_node)

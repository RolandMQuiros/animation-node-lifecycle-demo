extends AnimationNode

func get_child_nodes():
	var dict = Dictionary()
	dict['abc'] = 123
	dict['def'] = '456'
	dict['geh'] = null
	return dict

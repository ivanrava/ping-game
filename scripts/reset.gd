extends Area2D

export(NodePath) var score_path

func _on_area_entered(area):
	if area.name == "Ball":
		var score = get_node(score_path)
		score.text = str(int(score.text)+1)
		area.reset()

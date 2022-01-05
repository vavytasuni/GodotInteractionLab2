extends Area

export (String) var target_node
export (PackedScene) var secondChair
signal action_completed

var in_place2 = false

func _on_PlaceChairsOnTable_body_entered(body):
	print(body.name)
	if not in_place2:
		if body.name == target_node:
			print(body.name)
			in_place2 = true
			var parent = body.get_parent();
			parent.remove_child(body);
			var chair = secondChair.instance()
			chair.translation = Vector3(-0.434, 2.037, -2.242)
			chair.mode = RigidBody.MODE_STATIC
			get_parent().add_child(chair)
			print("Good now throw the bag in the corner to the void")
			emit_signal("action_completed")

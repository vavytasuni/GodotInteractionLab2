extends Area

export (String) var target_node
export (String) var target_node2
export (PackedScene) var nchair
export (PackedScene) var oldchair
signal action_completed

var in_place = false
var in_place2 = false
var in_place3 = false

func _on_PlaceChairsOnTable_body_entered(body):
	if not in_place:
		if body.name == target_node:
			print(body.name)
			in_place = true
			var parent = body.get_parent();
			parent.remove_child(body);
			var chair = nchair.instance()
			chair.mode = RigidBody.MODE_STATIC
			chair.translation = Vector3(-0.434, 1.137, -2.242)
			get_parent().add_child(chair)
			print("Chair placed successfully")
			print("Now stack the other chair on top")
	elif not in_place2:
		if body.name == target_node2:
			print(body.name)
			in_place2 = true
			var parent = body.get_parent();
			parent.remove_child(body);
			var chair = oldchair.instance()
			chair.translation = Vector3(0.617, 0.739, -2.2)
			get_parent().add_child(chair)
			print("Good job now take out the trash")

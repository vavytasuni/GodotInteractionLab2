extends Area

export (String) var target_node
export (String) var target_node2
export (PackedScene) var TheKey
signal action_completed

var in_place = false
var in_place2 = false

func _on_PlaceChairsOnTable_body_entered(body):
	if not in_place:
		if body.name == target_node:
			print(body.name)
			in_place = true
			var parent = body.get_parent();
			parent.remove_child(body);
			print("First trash thown out")
	if not in_place2:
		if body.name == target_node2:
			print(body.name)
			in_place2 = true
			var parent = body.get_parent();
			parent.remove_child(body);
			var key = TheKey.instance()
			key.translation = Vector3(-0.643, 2.10, -2.642)
			get_parent().add_child(key)
			print("Second trash thown out")

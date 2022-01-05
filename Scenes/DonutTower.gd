extends Area

export (String) var target_node
export (String) var target_node2
export (PackedScene) var pink
export (PackedScene) var coco
signal action_completed

var in_place = false
var in_place2 = false
var in_place3 = false

func _on_PlaceChairsOnTable_body_entered(body):
	if not in_place:
		if body.name.substr(0, 1) == target_node.substr(0, 1):
			print(body.name)
			in_place = true
			var parent = body.get_parent();
			parent.remove_child(body);
			var donut = pink.instance()
			donut.mode = RigidBody.MODE_STATIC
			donut.translation = Vector3(1.097, 1.673, 0.897)
			get_parent().add_child(donut)
			print("Donut placed successfully")
			print("Now place the coco donut on top")
	elif not in_place2:
		if body.name.substr(0, 1) == target_node2:
			print(body.name)
			in_place2 = true
			var parent = body.get_parent();
			parent.remove_child(body);
			var donut = coco.instance()
			donut.translation = Vector3(1.097, 1.973, 0.897)
			get_parent().add_child(donut)
			print("Now place the pink donut on top")
	elif not in_place3:
		if body.name.substr(0, 1) == target_node:
			print(body.name)
			in_place3 = true
			var parent = body.get_parent();
			parent.remove_child(body);
			var donut = pink.instance()
			donut.mode = RigidBody.MODE_STATIC
			donut.translation = Vector3(1.097, 1.673, 0.897)
			get_parent().add_child(donut)
			print("Donut placed successfully")
			print("Now place the coco donut on top")

extends Area

export (String) var target_node
export (PackedScene) var TheKey

onready var NODE_RigidBodyDoor: RigidBody = get_node("../RigidBodyDoor")

signal action_completed

var in_place = false
var in_place2 = false
var Dpressed = false

func _on_PlaceChairsOnTable_body_entered(body):
	if not in_place:
		if body.name == target_node:
			print("Good now press d and turn the key")
			in_place = true



func _input(event):
	if Dpressed:
		if event is InputEventMouseMotion:
			if event.relative.x > 50:
				print(event.relative.x)
			else:
				print("Faster!")
				NODE_RigidBodyDoor.free()
				Dpressed = false
			if event.relative.x < 0:
				print("The other way")
	if in_place:
		if Input.is_key_pressed(KEY_D):
			Dpressed = true
			print("Good now turn the key")
			emit_signal("action_completed")


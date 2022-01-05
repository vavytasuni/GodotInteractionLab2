extends Node

var task_idx = 0;



export (PackedScene) var secondChair


func _on_PlaceChairsOnTable_action_completed():
	print("here1")
	if task_idx == 0:
		task_idx = task_idx + 1

		print("here")
		


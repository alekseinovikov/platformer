extends Node2D


@export var next_scene : String


func _on_door_open_animate_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	$OpenDoor.show()


func _on_door_open_animate_body_exited(body: Node2D) -> void:
	if body.name != "Player":
		return
	$OpenDoor.hide()


func _on_go_to_next_scene_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	get_tree().change_scene_to_file(next_scene)

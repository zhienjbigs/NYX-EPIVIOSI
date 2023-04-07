tool

extends Area

export(String, FILE) var next_scene_path = ""
export(Vector3) var player_spawn = Vector3.ZERO
export(Vector3) var next_room = Vector3.ZERO

func _get_configuration_warning() -> String:
	if next_scene_path == "":
		return "next_scene_path must be set for the door to let you through"
	else:
		return ""

func _on_Area2_body_entered(body):
		next_room = player_spawn
	if get_tree().change_scene(next_scene_path) != OK :
		print ("")
	


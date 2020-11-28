tool
extends Button

export(String, FILE) var nextScenePath: = ""

func _on_Play_button_up():
	get_tree().change_scene(nextScenePath)

func _get_configuration_warning() -> String:
	return "Need file path to next scene for play button to work" if nextScenePath == "" else ""

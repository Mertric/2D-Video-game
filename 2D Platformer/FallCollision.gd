extends Area2D


func _on_FallCollision_body_entered(body):
	dead()
	
#add like a scene to either a checkpoint or to the starting menu
func dead() -> void:
	PlayerData.score = 0
	$Timer.start()
	
func _on_Timer_timeout():
	if PlayerData.currentScene == null:
		get_tree().change_scene("res://src/Levels/Level.tscn")
	else:
		get_tree().change_scene_to(PlayerData.currentScene)
	
	

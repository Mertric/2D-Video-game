extends Area2D

func _on_FallCollision_body_entered(body):
	dead()
	
#add like a scene to either a checkpoint or to the starting menu
func dead() -> void:
	$Timer.start()
	
func _on_Timer_timeout():
	get_tree().change_scene("res://src/Levels/Level.tscn")

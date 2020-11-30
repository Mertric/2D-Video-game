tool
extends Area2D

onready var animationPlayer: AnimationPlayer = $AnimationPlayer
#this is the type of tscn file
export var nextScene: PackedScene

func _on_Area2D_body_entered(body:PhysicsBody2D) -> void:
	Teleport()
	
func _get_configuration_warning() -> String:
	return "The next Scene property can't be empty" if not nextScene else "" 


func Teleport() -> void:
	animationPlayer.play("Fade_In")
	yield(animationPlayer, "animation_finished")
	#change to next scene
	PlayerData.currentScene = nextScene
	get_tree().change_scene_to(nextScene)





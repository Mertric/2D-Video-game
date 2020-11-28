extends Area2D

onready var animationPlayer: AnimationPlayer =  get_node("AnimationPlayer")

export var score: = 100

func _on_Objective_body_entered(body: PhysicsBody2D) -> void:
	picked()
	
func picked() -> void:
	PlayerData.score += score
	animationPlayer.play("Fade_Out")

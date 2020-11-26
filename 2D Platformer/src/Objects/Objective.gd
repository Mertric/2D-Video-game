extends Area2D

onready var animationPlayer: AnimationPlayer =  get_node("AnimationPlayer")


func _on_Objective_body_entered(body: PhysicsBody2D) -> void:
	animationPlayer.play("Fade_Out")
	

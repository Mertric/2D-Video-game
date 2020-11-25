extends "res://src/Actors/Actor.gd"

#this is called by every node by every scene starting at the deepest node of the scene tree.
func _ready():
	velocity.x = -speed.x

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if  is_on_wall():
		velocity.x *= -1.0
	velocity.y = move_and_slide(velocity, FLOOR_NORMAL).y

extends KinematicBody2D
class_name Actor

#var FLOOR_NORMAL = Vector2.UP
const FLOOR_NORMAL: = Vector2.UP
export var gravity: = 3000.0
export var speed: = Vector2(300.0, 1000.0)
var velocity: = Vector2.ZERO

#this physics process will excute before the children classes
#this function will allow the player to move

#func _physics_process(delta: float) -> void:
#	velocity.y	+= gravity * delta
#	#velocity.y = max(velocity.y, speed.y)
#	velocity = move_and_slide(velocity)

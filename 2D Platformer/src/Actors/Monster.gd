extends "res://src/Actors/Actor.gd"

#the visabilityEnabler2D will disable the monster from moving when it is out of the frame of the player.
var frameCount
#ready function
#this is called by every node by every scene starting at the deepest node of the scene tree.
func _ready():
	#this will deactivate the enemy so it will never enter the screen
	set_physics_process(false)
	velocity.x = -speed.x

#signals for call back to check when the player enters the 2d area the monster will die
func _on_JumpDetector_body_entered(body: PhysicsBody2D) -> void:
	if body.global_position.y > get_node("JumpDetector").global_position.y:
		return
	$CollisionShape2D.set_deferred("disabled", true) 
	queue_free()

#This function wil allow the monster to move along the axis 
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	#flip make the monster go the other direction on contact of the wall 
	if  is_on_wall():
		velocity.x *= -1.0
	if $RayCast2D.is_colliding() == false:
		velocity.x *= -1.0
		$RayCast2D.position.x *= -1.0
	velocity.y = move_and_slide(velocity, FLOOR_NORMAL).y




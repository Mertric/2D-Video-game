extends Actor

#: = Vector2.ZERO
export var stompImpulse: = 1000.0

var facing_right = true
#built in Godot Function
#delta is a timer
func _on_EnemyDetector_area_entered(area: Area2D) -> void:
	velocity = CalculateStompVelocity(velocity, stompImpulse)
	
func _on_EnemyDetector_body_entered(body: PhysicsBody2D) -> void:
	queue_free()

func _physics_process(delta: float) -> void:
	var isJumpInterrupted: = Input.is_action_just_released("jump") and velocity.y < 0.0
	#calculate the direction the character is trying to move at every frame
	#returns a floating point value return 1 if pressed 0 if not
	var direction: = GetDirection() 
	velocity = CalculateMoveVelocity(velocity,speed,direction,isJumpInterrupted)
	velocity = move_and_slide(velocity, FLOOR_NORMAL)
	

#This function will get the direction of the player when key is pressed for either A=Left, D=Right, or SpaceBar=Jump
#Jumping will only occur if the play is on the floor.
func GetDirection() -> Vector2:
	return Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),-1.0
	if Input.is_action_just_pressed("jump") and is_on_floor() else 1.0)	

#This will calculate the player movement velocity
func CalculateMoveVelocity(linearVelocity: Vector2,speed: Vector2, direction: Vector2, jumpInterrtuped: bool) -> Vector2:
	var outputVelocity: = linearVelocity
	outputVelocity.x = speed.x * direction.x
	outputVelocity.y += gravity * get_physics_process_delta_time()
	if direction.y == -1.0:
		outputVelocity.y = speed.y * direction.y
	if jumpInterrtuped:
		outputVelocity.y = 0.0
	return  outputVelocity
	
	
#This function will replace the y component of the linear velocity vector with the impulse, this will launch the player
#upwards 
func CalculateStompVelocity(linearVelocity: Vector2, impulse: float) -> Vector2:
	var output: = linearVelocity
	output.y = -impulse
	return output
	








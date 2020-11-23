extends Actor

#built in Godot Function
func _physics_process(delta: float) -> void:
	#calculate the direction the character is trying to move at every frame
	
	#returns a floating point value return 1 if pressed 0 if not
	var direction: = GetDirection() 
	velocity = speed * direction

#This function will get the direction of the player when key is pressed for either A=Left, D=Right, or SpaceBar=Jump
#Jumping will only occur if the play is on the floor.
func GetDirection() -> Vector2:
	return Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),-1.0
	if Input.is_action_just_pressed("jump") and is_on_floor() else 1.0)	

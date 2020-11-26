extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# var lock = false
# var 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


#Nk: I'm stil trying those script, this is far sway from C++
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#func inRange(), constant update and cheking if Player is in the view range, boolean;
# should return true when player is in range
#
#func patrol(), moving and checking, trigger chase() if inRange() is triggered, other wise continue;
#
#func rangeCheck(), called in chase() function, return Vector2f for checking the global range of player and enemies;
# Vector2, abs()
# 
#func chase(), constantly calling rangeCheck() and inRange(), 
#	->chase() should be a dead loop, until player is dead, Monster is terminated, or inRange no longer return true
# if that happend, breach the function back to patrol
#	->proceed moving
#		if moving doesn't reduce the rangeCheck's Vector2.x, and exist Vector2.y >= 1, call jump() to reduce 
#	-> if player's direction changed, flip the direction
#
# possible improvement: let mon3ter jump constantly while it found player?
# may looking for path finding function? Dij? 
#
#func pause(), while global menu // or player has win the level // and proceed to next level
#


#reference only#
#onready var enemy = get_parent()
#onready var player = enemy.player # reference to the player

#func _physics_process(delta):

#	var to_player = player.global_position - enemy.global_position
#	var distance = to_player.length()
	#var direction = to_player.normalize()

#	if distance > attack_range:
#		enemy.move_and_slide(direction * enemy.speed)
#	else:
#		enemy.attack()

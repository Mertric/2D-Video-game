extends Node

signal scoreUpdated	
signal playerDied

var score: = 0 setget SetScore
var deaths: = 0 setget SetDeath

func reset() -> void:
	score = 0
	deaths = 0

func SetScore(value: int) -> void:
	score = value
	emit_signal("scoreUpdated")
	
func SetDeath(value: int) -> void:
	deaths = value
	emit_signal("playerDied")

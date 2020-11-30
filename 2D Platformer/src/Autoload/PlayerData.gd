extends Node

signal scoreUpdated	
signal playerDied
signal changeScene

var score: = 0 setget SetScore
var deaths: = 0 setget SetDeath
var currentScene: PackedScene setget SetScene

func reset() -> void:
	score = 0
	deaths = 0

func SetScore(value: int) -> void:
	score = value
	emit_signal("scoreUpdated")
	
func SetDeath(value: int) -> void:
	deaths = value
	emit_signal("playerDied")
	
func SetScene(value: PackedScene) -> void:
	currentScene = value
	emit_signal("changeScene")

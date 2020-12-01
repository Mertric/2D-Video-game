extends "res://addons/gut/test.gd"

var player = preload("res://src/Actors/Player.gd").new()
var enemy
func before_each():
	enemy  = preload("res://src/Actors/Monster.gd").new()


	

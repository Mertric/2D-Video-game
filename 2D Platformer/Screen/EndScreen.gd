extends Control

onready var label: Label = $ScoreandDeath

func _ready() -> void:
	label.text = label.text  % [PlayerData.score,PlayerData.deaths]

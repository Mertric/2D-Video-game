extends Control

onready var sceneTree: = get_tree()
onready var pauseOverlay: = get_node("PauseOverlay")
onready var score: Label = get_node("Label")
onready var pauseTitle: Label = get_node("PauseOverlay/Title")  

var paused: = false setget SetPaused

func _ready() -> void:
	PlayerData.connect("scoreUpdated",self,"UpdateInterface")
	PlayerData.connect("playerDied",self,"PlayerDataPlayerDied")
	UpdateInterface()
	
func _unhandled_input(event: InputEvent) -> void :
	if event.is_action_pressed("pause"):
		self.paused =  not paused
		sceneTree.set_input_as_handled()

func UpdateInterface() -> void:
	score.text = "Score: %s" % PlayerData.score

func PlayerDataPlayerDied() -> void:
	self.paused = true
	pauseTitle.text = "You Died"
	
	
func SetPaused(value: bool) -> void:
	paused = value
	sceneTree.paused =  value
	pauseOverlay.visible = value

extends Node

@export var points = 0 
var randomNumber = randi_range(1, 100)

# make sure health doesn't go above 100 or below 0
var health := 100:
	set(value):
		health = clamp(value, 0, 100)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = "You have 0 points!"
	$Label.modulate = Color.GREEN

	$Button.pressed.connect(self._on_button_pressed)

func _on_button_pressed():
	addPoints(1)

func addPoints(clickPower):
	points += clickPower
	$Label.text = "You have " + str(points) + " points!"
	return points

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("my_action"):
		addPoints(1)

func _on_timer_timeout() -> void:
	addPoints(1)

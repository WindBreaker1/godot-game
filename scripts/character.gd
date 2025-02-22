class_name Character

extends Node

@export var username: String
@export var profession : String
@export var health: int

var chest := Equipment.new()

func die():
	health = 0
	print(profession + " died.")

class Equipment:
	var armor := 10
	var weight := 5

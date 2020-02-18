extends Node2D

export var  probablity = 0.2
onready var Meteor = load("res://Scenes/Meteor.tscn")

func _ready():
	randomize()
 

func _on_Timer_timeout():
	if randf() < probablity:
		var m = Meteor.instance()
		add_child(m)

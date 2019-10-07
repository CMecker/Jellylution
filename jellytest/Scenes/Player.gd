extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("left"):
		if position.x > 0:
			position.x = position.x - 1
	if Input.is_action_pressed("right"):
		if position.x < 160:
			position.x = position.x + 1
	if Input.is_action_pressed("up"):
		if position.y > 0:
			position.y = position.y - 1
	if Input.is_action_pressed("down"):
		if position.y < 90:
			position.y = position.y + 1
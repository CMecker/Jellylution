extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const GRAVITY = 20
const SPEED = 30
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var move = Vector2(0,GRAVITY)
	if Input.is_action_pressed("left"):
			move.x = - SPEED
	if Input.is_action_pressed("right"):
			move.x = + SPEED
	if Input.is_action_pressed("up"):
			move.y = - SPEED
	if Input.is_action_pressed("down"):
			move.y = + SPEED
		
	move_and_slide(move)
	
	$AnimationPlayer.play("idle")
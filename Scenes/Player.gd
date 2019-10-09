extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const GRAVITY = 20
const SPEED = 30
const JUMP_POWER=50
const UP_VECTOR = Vector2(0,-1)
var movement = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	movement.x = 0
	
	if is_on_ceiling() or is_on_floor():
		movement.y = 0 
	
	movement.y += GRAVITY * delta

	check_key_input()
	set_animation()

	move_and_slide(movement, UP_VECTOR)
	
	
	
func check_key_input():
	if Input.is_action_pressed("left"):
		movement.x = -1 * SPEED
	if Input.is_action_pressed("right"):
		movement.x = 1 * SPEED
	if Input.is_action_pressed("jump") and is_on_floor():
		movement.y = -JUMP_POWER
		
func set_animation():
	if movement.x < 0 and movement.y > 0:
		$AnimationPlayer.play("push")
		$moves.flip_h=true
	if movement.x > 0 and movement.y > 0:
		$AnimationPlayer.play("push")
		$moves.flip_h= false
	if movement.x == 0 and movement.y > 0:
		$AnimationPlayer.play("idle")
	if movement.y < 0:
		$AnimationPlayer.play("go")
#	if Input.is_action_pressed("left"):
#		move.x = - SPEED
#	if Input.is_action_pressed("right"):
#		move.x = + SPEED
#	if Input.is_action_pressed("up"):
#		move.y = - SPEED
#	if Input.is_action_pressed("down"):
#		move.y = + SPEED

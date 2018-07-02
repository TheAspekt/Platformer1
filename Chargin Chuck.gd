extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -900

var motion = Vector2()

func _physics_process(delta):
	motion.y += 10
	
	$
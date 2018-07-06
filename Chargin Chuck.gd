extends KinematicBody2D

var motion = Vector2()

const UP = Vector2(0, -1)
const GRAVITY = 0
const SPEED = 200
const JUMP_HIGHT = -600
#change
func _physics_process(delta):
	motion.y += 10
	
	if Input.is_action_pressed("ui_right"):
		motion.x = GRAVITY
	elif Input.is_action_pressed("ui_left"):
		motion.x = GRAVITY
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HIGHT
	
	motion = move_and_slide(motion, UP)
	pass


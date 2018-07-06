extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = -20
const SPEED = 200
const JUMP_HEIGHT = 900

var motion = Vector2()

var waitForJumpTime = 2
var waitForJumpTimer = 2
#var AnimatedSprite = (AnimatedSprite) 
#GetNode("AnimatedSprite");

func _ready():

	pass

func _physics_process(delta):
	motion.y += GRAVITY
	waitForJumpTimer += delta
	
	#handle physical movement
	if (waitForJumpTimer > 2):
		if (is_on_ceiling()):
			motion.y = JUMP_HEIGHT
			waitForJumpTimer = 0
		
	#base the animation off movement
		
	if (is_on_ceiling()):
		$AnimatedSprite.play("sleep")
	else:
		$AnimatedSprite.play("awake")
	
	motion = move_and_slide(motion, UP)
	
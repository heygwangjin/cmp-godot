extends KinematicBody2D

const ACCELARATION = 300
const GRAVITY = 20
const JUMP_SPEED = 600
var motion = Vector2()

func _physics_process(delta):
	# Movements
	motion.y += GRAVITY
	if Input.is_action_pressed("ui_right"):
		motion.x = ACCELARATION
		$Sprite.play("walk")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -ACCELARATION
		$Sprite.play("walk")
	else:
		$Sprite.play("idle")
		
	if Input.is_action_pressed("jump") and is_on_floor():
		motion.y -= JUMP_SPEED
		
	motion.x = lerp(motion.x,0,0.4)
	motion = move_and_slide(motion, Vector2.UP)
	
	pass

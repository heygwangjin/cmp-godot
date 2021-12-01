# Created by Gwang Jin Kim

extends KinematicBody2D

signal lose_health 

const WALK_SPEED = 250
const JUMP_SPEED = 600
const GRAVITY = 20
var velocity = Vector2()
const friction = 0.05
var health = 3

func is_dead() -> bool:
	if (health <= 0):
		get_tree().reload_current_scene()
		return true
	else:
		return false

func get_input():
	# Movements
	velocity.y += GRAVITY
	if Input.is_action_pressed("ui_right"):
		velocity.x = WALK_SPEED
		$Sprite.play("walk")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
		$Sprite.play("walk")
	else:
		$Sprite.play("idle")
		
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y -= JUMP_SPEED
		$JumpSound.play()

func _physics_process(delta):
	get_input()
	if(is_dead()):
		# Retry 화면 띄우기
		queue_free()
	
	if is_on_floor():
		velocity.x = lerp(velocity.x, 0, friction) # sliding
	
	velocity = move_and_slide(velocity, Vector2.UP)


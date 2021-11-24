# Created by Gwang Jin Kim

extends KinematicBody2D

class_name Player

const WALK_SPEED = 300
const JUMP_SPEED = 600
const GRAVITY = 20
var velocity = Vector2()
var health = 3

func is_dead() -> bool:
	if (health == 0):
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

func _physics_process(delta):
	get_input()
	if(is_dead()):
		# Retry 화면 띄우기
		queue_free()
	
	velocity.x = lerp(velocity.x,0,0.4) # smooth stop
	velocity = move_and_slide(velocity, Vector2.UP)

func _on_Jingwang_mouse_entered():
   get_tree().change_scene("res://Hells/HellOfInjustice.tscn")

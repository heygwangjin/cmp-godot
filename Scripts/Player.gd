extends KinematicBody2D

var speed = 300
var gravity = 300
var jump = -2500
var velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		$Sprite.play("walk")
		velocity.x = speed
	if Input.is_action_pressed("left"):
		velocity.x = -speed
		
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jump
		
	velocity.y = velocity.y + gravity	
	velocity.x = lerp(velocity.x,0,0.4)
	
	velocity = move_and_slide(velocity, Vector2.UP)

extends KinematicBody2D

var speed = 100
var FLOOR = Vector2(0,-1)

var velocity = Vector2()

var direction = 1

func _ready():
	pass

func _physics_process(delta):
	velocity.x =  speed * direction
	
	if direction == 1:
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.flip_h = true
		
	$AnimatedSprite.play("fly")
	
	velocity.y = 0
	
	velocity = move_and_slide(velocity, FLOOR)
	
	if is_on_wall():
		direction = direction * -1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

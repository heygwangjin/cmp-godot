# Created by Gwang Jin Kim
extends Area2D

var velocity = Vector2()

func _on_Fist_body_entered(body):
	if body.name == "Player":
		body.health -= 1
#		$PunchSound.play()
		queue_free()
	else:
		queue_free()

func _physics_process(delta):
	 velocity.y += gravity
	 position.y += velocity.y * delta

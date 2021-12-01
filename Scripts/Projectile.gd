# Created by Gwang Jin Kim
extends Area2D

var speed = 700

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_Projectile_body_entered(body):
	if body.name == "Byunsung":
		body.health -= 10
		print(body.health)
		queue_free()
	else:
		queue_free()

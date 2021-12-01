# Created by Gwang Jin Kim
extends Area2D

var speed = 700
var damage = 10

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_Projectile_body_entered(body):
	if body.name == "Byunsung":
		body.set_health(self.damage)
		queue_free()
	else:
		queue_free()

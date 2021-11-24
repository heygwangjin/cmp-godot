extends Area2D

func _on_Fire_body_entered(body):
	if body.name == "Player":
		body.health -= 3

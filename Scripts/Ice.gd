extends Area2D

signal lose_health

func _on_ice_body_entered(body):
	if body.name == "Player":
		body.health -= 3
		emit_signal("lose_health")

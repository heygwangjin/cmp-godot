extends Area2D

signal soul_collected

func _on_soul_body_entered(body):
	queue_free()
	emit_signal("soul_collected")

extends StaticBody2D

class_name Byunsung

const min_souls = 500
var health = 100

func is_dead() -> bool:
	if (health <= 0):
		return true
	else:
		return false

func _physics_process(delta):
	if(is_dead()):
		# End Scene으로 넘어가기
		queue_free()

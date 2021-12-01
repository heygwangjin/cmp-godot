extends Area2D

const min_souls = 500

func _on_Byunsung_body_entered(body):
	var souls = $"../HUD".souls
	if (souls >= min_souls):
		# 클리어 했을 때 나는 소리 구현
		print("CLEAR!")
	else:
		# 죽을 때 나는 소리 구현
		get_tree().reload_current_scene()

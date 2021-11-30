extends Area2D

const min_souls = 400

func _on_Jingwang_body_entered(body):
	var souls = $"../HUD".souls
	if (souls >= min_souls):
		# 클리어 했을 때 나는 소리 구현
		get_tree().change_scene("res://Hells/HellOfInjustice.tscn")
	else:
		# 죽을 때 나는 소리 구현
		get_tree().reload_current_scene()

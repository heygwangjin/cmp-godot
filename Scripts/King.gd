extends Area2D

const min_souls = 400
# when character Jun enter the King of Jingwang, move to next Scene
func _on_Jingwang_body_entered(body):
	var souls = $"../HUD".souls
	# Goal souls
	if (souls >= min_souls):
		get_tree().change_scene("res://Hells/HellOfInjustice.tscn")
	else:
		get_tree().reload_current_scene()

func _unhandled_input(event):
	# Make you go to the next scene by prssing key 'c'
	if Input.is_action_pressed("cheatKey"):
		get_tree().change_scene("res://Hells/HellOfInjustice.tscn")

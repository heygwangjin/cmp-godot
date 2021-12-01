extends Node2D


func _ready():
	$AnimationPlayer.play("FadeIn")
	yield(get_tree().create_timer(2),"timeout")
	$AnimationPlayer.play("Fadeout2")
	yield(get_tree().create_timer(2),"timeout")
	get_tree().change_scene("res://Hells/HellOfViolence.tscn")

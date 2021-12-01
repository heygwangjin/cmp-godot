extends Node2D


func _ready():
	$AnimationPlayer.play("FadeIn")
	yield(get_tree().create_timer(7),"timeout")
	$AnimationPlayer.play("Fadeout2")
	yield(get_tree().create_timer(3),"timeout")
	get_tree().change_scene("res://Intro/Intro_start.tscn")
	print("hi")

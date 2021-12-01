extends Node2D


func _ready():
	$AnimationPlayer.play("FadeIn")
	yield(get_tree().create_timer(4),"timeout")
	$AnimationPlayer.play("FadeOut")
	yield(get_tree().create_timer(3),"timeout")
	get_tree().change_scene("res://Intro/IntrO_des.tscn")

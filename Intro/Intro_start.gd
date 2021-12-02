extends Node2D

var start = false

func _ready():
	while(!start):
		$AnimationPlayer.play("FadeIn")
		yield(get_tree().create_timer(3),"timeout")
		$AnimationPlayer.play("FadeOut")
		yield(get_tree().create_timer(3),"timeout")

func _on_Start_pressed():
	get_tree().change_scene("res://Hells/HellOfViolence.tscn")

func _on_Control_pressed():
	get_tree().change_scene("res://Intro/Intro_control.tscn")

func _on_Story_pressed():
	get_tree().change_scene("res://Intro/Intro_des.tscn")

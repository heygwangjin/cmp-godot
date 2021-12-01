extends Node2D


func _ready():
	$AnimationPlayer.play("FadeIn")
	yield(get_tree().create_timer(3),"timeout")
	$AnimationPlayer.play("FadeOut")
	yield(get_tree().create_timer(3),"timeout")


func _on_Button_pressed():
	get_tree().change_scene("res://Hells/HellOfViolence.tscn")



func _on_Button2_pressed():
	get_tree().change_scene("res://Intro/Intro_des.tscn")

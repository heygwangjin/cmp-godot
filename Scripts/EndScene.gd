# Created by Gwang Jin Kim
extends Node2D

var end = false

func _ready():
	$KilledBossSound.play()
	while(!end):
		$AnimationPlayer.play("FadeIn")
		yield(get_tree().create_timer(3),"timeout")
		$AnimationPlayer.play("FadeOut")
		yield(get_tree().create_timer(3),"timeout")

func _on_Retry_pressed():
	get_tree().change_scene("res://Intro/Intro_start.tscn")

func _on_Quit_pressed():
	get_tree().quit()

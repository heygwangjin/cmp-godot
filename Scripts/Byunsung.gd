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
	if is_dead():
		if $"../HUD".souls >= 500:
			get_tree().change_scene("res://Scenes/EndScene.tscn")
		else:
			get_tree().reload_current_scene()

func set_health(damage):
	self.health -= damage
	$"../HealthBar/ProgressBar".set_bar_value(self.health)
	
	if self.health > 0:
		$DamagedBossSound.play()

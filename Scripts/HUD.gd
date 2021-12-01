extends CanvasLayer

var souls = 0
onready var health_player = $"../Player".health

func _ready():
	$souls.text = String(souls)
	$Live.text = "Lives : " + String(health_player)

func _on_soul_soul_collected():
	souls = souls + 100
	$CollectSound.play()
	_ready()
	
func _on_Enemy_lose_health():
	_ready()

func _on_Fire_2_lose_health():
	_ready()

func _on_Fists_lose_health():
	$PunchSound.play()
	_ready()

func _on_icicle2_lose_health():
	_ready()

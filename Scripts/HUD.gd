extends CanvasLayer

var souls = 0

func _ready():
	$souls.text = String(souls)


func _on_soul_soul_collected():
	souls = souls + 100
	_ready()

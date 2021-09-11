extends CanvasLayer

var coins = 0

func _ready():
	$Coins.text = String(coins)

func _on_coin_collected():
	coins = coins + 1
	_ready()
	if coins == 9:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://HUD/Winner.tscn")

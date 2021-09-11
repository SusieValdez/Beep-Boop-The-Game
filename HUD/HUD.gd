extends CanvasLayer

var coins = 0

func _ready():
	$Coins.text = String(coins)

func _physics_process(_delta):
	if coins == 3:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://level1.tscn")

func _on_coin_collected():
	coins = coins + 1
	_ready()

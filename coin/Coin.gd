extends Area2D

onready var animationPlayer = $AnimationPlayer

func _on_Coin_body_entered(body):
	animationPlayer.play("bounce")
	body.add_coin()


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()

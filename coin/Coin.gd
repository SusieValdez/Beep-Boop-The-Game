extends Area2D

signal coin_collected

onready var animationPlayer = $AnimationPlayer

# warning-ignore:unused_argument
func _on_Coin_body_entered(body):
	animationPlayer.play("bounce")
	emit_signal("coin_collected")
	set_collision_mask_bit(0, false)
	$SoundCoinCollect.play()

func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()

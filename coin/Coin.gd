extends Area2D

signal coin_collected

onready var animationPlayer = $AnimationPlayer

func _on_Coin_body_entered(body):
	animationPlayer.play("bounce")
	emit_signal("coin_collected")
	set_collision_mask_bit(0, false)

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()

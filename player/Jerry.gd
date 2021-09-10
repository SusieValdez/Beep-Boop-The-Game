extends KinematicBody2D

const SPEED = 350
const GRAVITY = 35
const JUMPFORCE = -1100

var velocity = Vector2(0,0)

onready var sprite = $Sprite

func _physics_process(_delta):
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
		sprite.play("walk")
		sprite.flip_h = false
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED
		sprite.play("walk")
		sprite.flip_h = true
	else: 
		sprite.play("idle")
	
	if not is_on_floor():
		sprite.play("air")
	
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE
	
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.2)
	


func _on_Fallzone_body_entered(body):
	get_tree().change_scene("res://level1.tscn")


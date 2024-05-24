class_name Coin

extends Area2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D

var collected : bool

func _ready():
	collected = false

func _on_body_entered(body):
	if not collected:
		collect()
		Global.coins_collected_since_last_checkpoint.append(self)
	
	
func collect():
	visible = false
	collected = true

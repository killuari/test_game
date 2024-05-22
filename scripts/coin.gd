extends Area2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D


func _ready():
	if Global.spawn_position != Vector2(0,0):
		queue_free()
	else:
		pass

func _on_body_entered(body):
	animated_sprite_2d.queue_free()
	collision_shape_2d.disabled = true
	

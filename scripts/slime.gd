extends CharacterBody2D


const SPEED = 50.0
@onready var ray_cast_right_down = $"RayCastRight down"
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left_down = $"RayCastLeft down"
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D

var direction = 1

func _process(delta):
	position.x += direction * SPEED * delta
	if ray_cast_left.is_colliding() or ray_cast_left_down.is_colliding() == false:
		direction = 1
	elif ray_cast_right.is_colliding() or ray_cast_right_down.is_colliding() == false:
		direction = -1
	
	if direction < 0:
		animated_sprite_2d.flip_h = true
	elif direction > 0:
		animated_sprite_2d.flip_h = false

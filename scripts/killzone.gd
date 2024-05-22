extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body is Player:
		body.collision_shape.disabled = true
		timer.start()


func _on_timer_timeout():
	Global.player.dead = true

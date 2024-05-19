extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body is Player:
		body.collision_shape.queue_free()
		await body.collision_shape.tree_exited
		body.gravity = 0
		body.velocity.y = 200
		body.velocity.x = 0
		timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()

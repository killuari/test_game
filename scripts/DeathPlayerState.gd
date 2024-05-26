class_name DeathPlayerState

extends State

@onready var timer = $Timer

func enter():
	Global.player.SPEED = 0
	Global.player.JUMP_VELOCITY = 0
	Global.player.animated_sprite_2d.play("death")
	Global.player.dead = false
	timer.start()

func _on_timer_timeout():
	Global.player.respawn()


func exit():
	Global.player.animated_sprite_2d.pause()



class_name RunningPlayerState

extends State

func enter():
	Global.player.animated_sprite_2d.play("running")

func exit():
	Global.player.animated_sprite_2d.pause()

func update(delta):
	if Global.player.velocity.y > 0 and Global.player.is_on_floor() == false:
		transition.emit("FallingPlayerState")
	elif Global.player.velocity.y < 0 and Global.player.is_on_floor() == false:
		transition.emit("JumpingPlayerState")
	elif Global.player.velocity.x == 0 and Global.player.is_on_floor():
		transition.emit("IdlePlayerState")
	elif Global.player.dead:
		transition.emit("DeathPlayerState")

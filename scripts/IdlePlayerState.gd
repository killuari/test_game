class_name IdlePlayerState

extends State

func update(delta):
	if Global.player.velocity.x > 0 and Global.player.is_on_floor():
		transition.emit("RunningPlayerState")
	elif Global.player.velocity.y > 0:
		transition.emit("FallingPlayerState")

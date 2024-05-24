class_name RunningPlayerState

extends State

func update(delta):
	if Global.player.velocity.x == 0 and Global.player.velocity.y == 0:
		transition.emit("IdlePlayerState")

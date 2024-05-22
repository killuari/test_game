extends Node

var active_checkpoint_pos : Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	for checkpoint in get_children():
		checkpoint.checkpoint_entered.connect(new_checkpoint)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.player.dead:
		print("tot")
	

func new_checkpoint(pos : Vector2):
	Global.spawn_position = pos
	print(pos)



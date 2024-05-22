extends Node

@onready var player = $"../Player"

var active_checkpoint_pos : Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	for checkpoint in get_children():
		checkpoint.checkpoint_entered.connect(new_checkpoint)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.dead == true:
		print("tot")
	

func new_checkpoint(pos : Vector2):
	active_checkpoint_pos = pos
	print(pos)



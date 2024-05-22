extends Node2D

@onready var player = %Player

func _ready():
	player.spawn(Global.spawn_position)

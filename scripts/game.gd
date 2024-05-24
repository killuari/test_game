extends Node2D

@onready var player = %Player
@onready var coins = %Coins


func _ready():
	player.spawn(Global.spawn_position)
	
	for coin in Global.coins_collected:
		coins.get_children()[coin].queue_free()
		print("raus")

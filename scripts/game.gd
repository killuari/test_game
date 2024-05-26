extends Node2D

@onready var player = %Player
@onready var coins = %Coins


func _ready():
	var count = 0
	player.spawn(Global.spawn_position)
	for coin in Global.coins_collected:
		count += 1
		print(coins.get_children()[coin].name)
		coins.get_children()[coin].collect()


extends Node

@onready var coins = %Coins
@onready var cp_timer = %CPTimer

var active_checkpoint_pos : Vector2


# Called when the node enters the scene tree for the first time.
func _ready():
	for checkpoint in get_children():
		checkpoint.checkpoint_entered.connect(new_checkpoint)

func new_checkpoint(pos : Vector2):
	Global.spawn_position = pos
	cp_timer.start()

func _on_cp_timer_timeout():
	for coin in Global.coins_collected_since_last_checkpoint:
		if is_instance_valid(coin):
			Global.coins_collected.append(coins.get_children().find(coin))
			coin.queue_free()
		else:
			print("coin not valid anymore")
			Global.score -= 1
		
	Global.coins_collected_since_last_checkpoint = []

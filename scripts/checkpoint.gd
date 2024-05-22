class_name Checkpoint

extends CharacterBody2D

signal checkpoint_entered(pos:Vector2)

@onready var checkzone = $Checkzone

var active = false

func _on_checkzone_body_entered(body):
	if body is Player and active == false:
		active = true
		checkpoint_entered.emit(global_position)





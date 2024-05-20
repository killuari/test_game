extends CharacterBody2D

@onready var checkzone = $Checkzone

var active = false

func _on_checkzone_body_entered(body):
	if body is Player and active == false:
		active = true
		
func respawn():
	pass

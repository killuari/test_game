class_name Player

extends CharacterBody2D

@export var collision_shape : CollisionShape2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var checkpoints = $"../Checkpoints"
@onready var camera_2d = $Camera2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 980
var dead = false

func _ready():
	Global.player = self
	camera_2d.enabled = false
	camera_2d.position_smoothing_enabled = false

func _physics_process(delta):
	# Add the gravity.
	
	if velocity.x < 0:
		animated_sprite_2d.flip_h = true
	elif velocity.x > 0:
		animated_sprite_2d.flip_h = false
	
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
	
	
		
		
		
func spawn(pos: Vector2):
	global_position = pos
	camera_2d.enabled = true
	camera_2d.position_smoothing_enabled = true

func respawn():
	get_tree().reload_current_scene()


extends Area2D


@export var velocity = 100
@export var speed = 100
@export var player_path: NodePath

var player: CharacterBody2D

func _ready():
	player = get_node(player_path)

func _physics_process(delta):
	if player:
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * speed
	move_and_slide()

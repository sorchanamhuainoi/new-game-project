extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft

const SPEED = 60
var direction = 1

func _process(delta: float) -> void:
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	elif ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	position.x += SPEED * direction * delta

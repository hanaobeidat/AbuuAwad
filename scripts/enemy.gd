extends Node2D

const SPEED = 60

var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
@onready var ray_cast_right: RayCast2D = $RayCastRIGHT
@onready var ray_cast_lift: RayCast2D = $RayCastLIFT
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta) :
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_lift.is_colliding():
		direction = 1
		animated_sprite.flip_h = false

	position.x += direction * SPEED * delta

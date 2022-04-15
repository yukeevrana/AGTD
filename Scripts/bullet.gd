extends KinematicBody2D

onready var target = get_parent().get_node("tower").position
var speed = 100
var velocity = Vector2()

func _ready():
	pass
	
func _physics_process(delta):
	velocity = position.direction_to(target) * speed * delta
	look_at(target)
	var collision = move_and_collide(velocity)
	if collision:
		print_debug(collision)

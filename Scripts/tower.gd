extends Node2D 

var hp = 3
var list_of_enemies = []

func _ready():
	pass

func _on_circle_body_entered(body):
	list_of_enemies.append(body)
	print_debug(list_of_enemies)

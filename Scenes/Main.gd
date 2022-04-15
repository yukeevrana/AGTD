extends Node2D

export(PackedScene) var bullet_scene

func _ready():
	randomize()
	$bullet_timer.start()


func _on_bullet_timer_timeout():
	
	var bullet = bullet_scene.instance()

	# Choose a random location on Path2D.
	var bullet_spawn_location = get_node("bullet_path/bullet_spawn")
	bullet_spawn_location.offset = randi()

	# Set the mob's position to a random location.
	bullet.position = bullet_spawn_location.position

	# Spawn the mob by adding it to the Main scene.
	add_child(bullet)

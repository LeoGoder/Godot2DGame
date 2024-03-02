extends Area2D


func _physics_process(delta):
	var ennemies_in_range = get_overlapping_bodies()
	if ennemies_in_range.size() > 0:
		var target_ennemy = ennemies_in_range.front()
		look_at(target_ennemy.global_position)


func shoot():
	const bullet = preload("res://Scene/bullet.tscn")
	var new_bullet = bullet.instantiate()
	new_bullet.global_position = %BulletShoot.global_position
	new_bullet.global_rotation = %BulletShoot.global_rotation
	%BulletShoot.add_child(new_bullet)
	


func _on_timer_timeout():
	shoot()

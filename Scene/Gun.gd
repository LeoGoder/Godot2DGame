extends Area2D


func _physics_process(delta):
	var ennemies_in_range = get_overlapping_bodies()
	if ennemies_in_range.size() > 0:
		var target_ennemy = ennemies_in_range.front()
		look_at(target_ennemy.global_position)

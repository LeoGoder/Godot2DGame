extends Node2D

func spawn_mob():
	var mobs = preload("res://Scene/mobs.tscn").instantiate()
	
	%PathFollow2D.progress_ratio = randf()
	mobs.global_position = %PathFollow2D.global_position
	add_child(mobs)


func _on_timer_timeout():
	spawn_mob()


func _on_player_health_depleted():
	%GameOverScreen.visible = true
	get_tree().paused = true

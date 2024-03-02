extends Node2D

func spawn_mob():
	var mobs = preload("res://Scene/mobs.tscn").instantiate()
	
	%PathFollow2D.progress_ratio = randf()
	mobs.global_position = %PathFollow2D.global_position
	add_child(mobs)


func _on_timer_timeout():
	spawn_mob()


func _on_player_health_depleted():
	%GameOverScreen.show()
	Engine.time_scale = 0




func _on_quit_pressed():
	get_tree().quit()


func _on_restart_pressed():
	get_tree().change_scene_to_file("res://.godot/exported/133200997/export-3c636b806aa9ba0a0547fbcdae143120-game.scn")
	Engine.time_scale = 1

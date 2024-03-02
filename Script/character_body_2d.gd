extends CharacterBody2D
signal health_depleted

var health = 100.0

func _physics_process(delta):
	Direction()
	const DamageRate = 15.0
	var overlappingMobs = %HurtBox.get_overlapping_bodies()
	if overlappingMobs.size() > 0:
		health -= DamageRate * overlappingMobs.size() * delta
		%ProgressBar.value = health
		if health <= 0.0:
			health_depleted.emit()


func Direction():
	var direction = Input.get_vector("Gauche", "Droite","Haut","Bas")
	velocity = direction * 600
	if (velocity == Vector2(0,0)):
		%HappyBoo.play_idle_animation()
	else :
		%HappyBoo.play_walk_animation()
	move_and_slide()
	


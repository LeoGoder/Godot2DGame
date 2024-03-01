extends CharacterBody2D

func _physics_process(delta):
	Direction()


func Direction():
	var direction = Input.get_vector("Gauche", "Droite","Haut","Bas")
	velocity = direction * 600
	if (velocity == Vector2(0,0)):
		%HappyBoo.play_idle_animation()
	else :
		%HappyBoo.play_walk_animation()
	move_and_slide()
	

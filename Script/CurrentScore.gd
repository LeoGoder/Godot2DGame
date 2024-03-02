extends Label



func _ready():
	text = str(Global.EnnemyKilled)
	
func _physics_process(delta):
	_ready()



extends Timer

var Alien = preload("res://Alien.tscn")

func _on_Timer_timeout():
	var alien = Alien.instance()
	alien.position.x = rand_range(0, 1000)
	alien.position.y = rand_range(0, 300)
	get_tree().root.add_child(alien)

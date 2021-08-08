extends Area2D

var speed = 300

var Bomb = preload("res://Bomb.tscn")

func _process(delta):
	position.x += speed * delta
	if position.x > 1000:
		speed = -speed
		position.x = 1000
		position.y += 20
	if position.x < 0:
		speed = -speed
		position.x = 0
		position.y += 20
	if randf()<0.05:
		var bomb = Bomb.instance()
		bomb.position = position
		get_tree().root.add_child(bomb)



func _on_Alien_area_entered(area):
	queue_free()

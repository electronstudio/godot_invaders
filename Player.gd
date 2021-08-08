extends Area2D

var Bullet = preload("res://Bullet.tscn")

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		position.x -= delta * 400
	if Input.is_action_pressed("ui_right"):
		position.x += delta * 400
	if Input.is_action_just_pressed("ui_accept"):
		var bullet = Bullet.instance()
		bullet.position = position
		get_tree().root.add_child(bullet)


func _on_Player_area_entered(area):
	queue_free()

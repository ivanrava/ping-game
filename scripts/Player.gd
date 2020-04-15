extends "Bar.gd"

var velocity

func _process(delta):
	if Input.is_action_pressed("up") and not Input.is_action_pressed("down"):
		velocity = -SPEED*delta
	elif Input.is_action_pressed("down") and not Input.is_action_pressed("up"):
		velocity = SPEED*delta
	else:
		velocity = 0
	
	position.y = clamp(position.y+velocity, 0, screen_size.y-bar_height)

func _on_Bar_area_entered(area):
	if area.name == "Ball":
		area.direction = Vector2(1, randf()*2-1).normalized()
		$Audio.play()

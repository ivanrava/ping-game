extends "Bar.gd"

var ball
var velocity
const DELAY = 10

func _ready():
	pass

func _process(delta):
	if enemy_position() < ball.position.y and ball.position.y-enemy_position() > DELAY:
		velocity = SPEED*delta
	elif enemy_position() > ball.position.y and enemy_position()-ball.position.y > DELAY:
		velocity = -SPEED*delta
	else:
		velocity = 0
	
	position.y = clamp(position.y+velocity, 0, screen_size.y-bar_height)

func set_ball(ball_ref):
	ball = ball_ref

func enemy_position():
	return position.y+bar_height/2

func _on_Bar_area_entered(area):
	if area.name == "Ball":
		area.direction = Vector2(-1, randf()*2-1).normalized()
		$Audio.play()

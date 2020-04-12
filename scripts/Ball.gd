extends Area2D

export var direction = Vector2.LEFT
export var initial_speed = 200
export var _speed_step = 10
var _speed = initial_speed
var _initial_pos

func _ready():
	_initial_pos = Vector2(get_viewport_rect().size.x/2, get_viewport_rect().size.y/2)
	reset()

func _process(delta):
	_speed += delta*_speed_step
	position += _speed*delta*direction

func reset():
	direction = Vector2.LEFT
	_speed = initial_speed
	position = _initial_pos

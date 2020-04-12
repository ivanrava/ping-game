extends Area2D

var screen_size
var bar_height
const SPEED = 300

func _ready():
	screen_size = get_viewport_rect().size
	bar_height = $BarColor.rect_size.y

func width():
	return $BarColor.rect_size.x

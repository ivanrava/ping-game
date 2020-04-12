extends Node

const game_padding = 10
const bar = preload("res://scenes/Bar.tscn")
const behavior_player = preload("res://scripts/Player.gd")
const behavior_enemy = preload("res://scripts/Enemy.gd")

func _ready():
	var player = bar.instance()
	player.position.x = game_padding
	player.name = "Player"
	player.set_script(behavior_player)
	add_child(player)
	
	var enemy = bar.instance()
	enemy.position.x = get_viewport().size.x - game_padding - enemy.width()
	enemy.name = "Enemy"
	enemy.set_script(behavior_enemy)
	enemy.set_ball($Ball)
	add_child(enemy)

func _process(_delta):
	if(Input.is_action_pressed("ui_cancel")):
		get_tree().quit()

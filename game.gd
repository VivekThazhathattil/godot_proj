extends Node2D
var screen_size : Vector2 = Vector2()
var time
var missile
var count = 0
var progress_no = 0.5
var is_player_dead = false
onready var s = load("res://scenes/missile.tscn")

func _ready():
	screen_size = OS.get_screen_size()
	time = 0
	set_process(true)
	
func _process(delta):
	time += delta
	print(time)
	if time > count*1:
		count += 1 - 0.01*count
		missile = s.instance()
		add_child(missile)

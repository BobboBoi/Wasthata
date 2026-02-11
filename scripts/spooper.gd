extends Node

@onready var scene := preload("res://scenes/scare.tscn")
@onready var timer := Timer.new()

## Chance to get spooped in seconds
var chance := 600.

func _ready() -> void:
	add_child(timer)
	timer.one_shot = true
	timer.start(get_next_spoop())
	timer.timeout.connect(spoop)

func set_spoop_chance(value : float) -> void:
	chance = value
	timer.start(chance)

func get_next_spoop() -> float:
	return randf_range(1., chance)

func spoop() -> void:
	var s = scene.instantiate()
	add_child(s)
	
	timer.start(get_next_spoop())

extends Control

@export var force_spoop_on_ready = false

func _ready() -> void:
	get_window().mode = Window.MODE_MINIMIZED
	%LineEdit.text = str(Spooper.chance)
	
	if force_spoop_on_ready:
		Spooper.spoop()

func _chance_changed(text : String) -> void:
	var chance : int = max(floori(float(text)), 10)
	Spooper.set_spoop_chance(chance)
	%LineEdit.text = str(chance)

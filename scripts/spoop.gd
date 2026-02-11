extends Window

func _ready() -> void:
	if OS.get_name() != "Windows" && OS.get_name() != "UWP": # windows L
		mouse_passthrough_polygon = [Vector2.ZERO, Vector2.UP, Vector2.LEFT]
	
	borderless = true;
	always_on_top = true
	transparent = true;
	popup_wm_hint = true
	force_native = true
	show()

func kill() -> void:
	queue_free()

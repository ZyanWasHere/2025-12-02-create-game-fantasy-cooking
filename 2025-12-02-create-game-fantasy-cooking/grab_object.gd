extends TouchScreenButton

var Selected = false
var Offset : Vector2

func _on_pressed() -> void:
	Selected = true
	Offset = get_global_mouse_position() - global_position
	pass

func _on_released() -> void:
	Selected = false
	pass

func _input(event):
	if (Selected == true):
		global_position = get_global_mouse_position() - Offset
	pass

extends TextureButton

var Selected = false
var Offset : Vector2

func _input(event):
	if (Selected == true):
		global_position = get_global_mouse_position() - Offset
	pass


func _on_button_down() -> void:
	Selected = true
	pass # Replace with function body.




func _on_button_up() -> void:
	Selected = false
	pass # Replace with function body.

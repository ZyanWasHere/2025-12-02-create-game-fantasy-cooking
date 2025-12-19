extends TextureButton

# selected = move if selected
# offset = lets us center object
var Selected = false
var Offset := Vector2(50, 50)

# _input is the only function that seems to work like update()
func _input(event):
	if (Selected == true):
		global_position = get_global_mouse_position() - Offset
	pass


func _on_button_down() -> void:
	Selected = true
	pass

func _on_button_up() -> void:
	Selected = false
	pass

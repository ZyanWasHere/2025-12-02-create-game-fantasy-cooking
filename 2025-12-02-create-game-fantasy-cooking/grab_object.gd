extends TouchScreenButton

var Selected = false
var Offset : Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _input(event):
	if event.is_action_pressed("click"):
		print("object clicked")
		Selected = true
		Offset = get_global_mouse_position() - global_position

	if event.is_action_released("click"):
		Selected = false

	if (Selected == true):
		
		global_position = get_global_mouse_position() - Offset

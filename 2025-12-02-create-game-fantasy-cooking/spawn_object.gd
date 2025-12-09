extends TouchScreenButton

var EggObject = preload("res://egg.tscn")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_pressed() -> void:
	var MakeEgg = EggObject.instantiate()
	get_tree().current_scene.add_child(MakeEgg)
	print("made object")
	pass # Replace with function body.


func _on_texture_button_button_up() -> void:
	pass # Replace with function body.

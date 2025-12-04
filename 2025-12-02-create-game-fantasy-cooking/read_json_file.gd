extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(recipe("var"))
	pass

func recipe(condition):
	var CurrentlyMaking = {
		"IsFrozen" : false,
		"IsCold" : false,
		"IsNeutral" : false,
		"IsWarm" : false,
		"IsCooked" : false,
		"IsBurnt" : false,
		"IsOnFire" : false,
		"IsOld" : false,
		
		"ContainsEggs" : false,
		"ContainsCheese" : false,
		"ContainsBread" : false
		}
	
	if (condition == "bread"):
		CurrentlyMaking["ContainsBread"] = true
	return CurrentlyMaking

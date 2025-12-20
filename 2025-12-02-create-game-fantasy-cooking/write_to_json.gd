extends Node

var DataLocation = "res://data/data.json"
var DataToSave = {
	"TestBool" : 123
}

# EXAMPLE CODE
#var data_to_save = {
	#"player_name": "Hero",
	#"level": 10,
	#"inventory": ["Sword", "Shield"]
#}

func _input(_event):
	SaveToJson()
	pass



#
func SaveToJson():
	var file = FileAccess.open(DataLocation, FileAccess.WRITE)
	
	if file:
		var json_string = JSON.stringify(DataToSave, "\t") # \t makes it look pretty?
		
		file.store_string(json_string)
		file.close()
		print("saved data")
	else:
		print("failed to save")




# because we are returning data, we can do "LoadJson().variable"
# so "LoadJson().health" for example, and it should work :3
# and something stupid to note, godot doesn't have an append function.
# so no adding! we copy everything or we delete everything!
func LoadJson():
#	check if the data file exists.
	if not FileAccess.file_exists(DataLocation):
		print("the data doesn't exist")
		return null
	
	var file = FileAccess.open(DataLocation, FileAccess.READ)
	var json_string = file.get_as_text()
	file.close()
	var data = JSON.parse_string(json_string)
	
	if data is Dictionary:
		# either you can print everything - i.e "print(data)"
		# or you can print individual items like print(data["player name"])
		return data
	else:
		print("Error: Parsed data is not a dictionary.")
		return null

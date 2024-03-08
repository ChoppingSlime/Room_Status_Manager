extends VBoxContainer

var base = 100

func _ready() -> void:
	$Room1.room_number = str(1 + 100)

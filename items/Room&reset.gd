extends HSplitContainer

var room_status : int = 0 

var out_use : = Color.RED
var in_use : = Color.LIME_GREEN
var no_guest : = Color.WEB_GRAY

@export var room_number : String


func _ready() -> void:
	$Room.set_text(room_number)
	$Room.set_text(room_number)
	


# 0 == no guest
# 1 == empty
# 2 == in use
func _on_room_button_up() -> void:
	match(room_status):
		0:
			room_status += 1
			update_button_color(in_use)
		1:
			room_status += 1
			update_button_color(out_use)
		2:
			room_status -= 1
			update_button_color(in_use)


func _on_reset_button_up() -> void:
	reset_button()
	$Room.set_text(room_number)


func reset_button() -> void:
	room_status = 0
	update_button_color(no_guest)


func update_button_color(color) -> void:
	$Room.set("theme_override_colors/font_color",color)
	$Room.set("theme_override_colors/font_focus_color",color)
	$Room.set("theme_override_colors/font_hover_color",color)
	$Room.set("theme_override_colors/font_outline_color",color)
	

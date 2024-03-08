extends Control


func _on_reset_generale_button_up() -> void:
	get_tree().call_group("room","reset_button")
	

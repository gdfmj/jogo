extends Panel

@onready var start_button = $StartGame
@onready var quit_button = $QuitGame

func _ready() -> void:
	start_button.grab_focus()

func _process(_delta: float) -> void:
	if start_button.is_hovered():
		start_button.grab_focus()
	elif quit_button.is_hovered():
		quit_button.grab_focus()

func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")

func _on_quit_game_pressed() -> void:
	get_tree().quit()

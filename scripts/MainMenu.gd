extends Control
## Main menu for Sonic Boll Deluxe Android port
## Styled after the Boll Deluxe menu with icon grid layout

func _ready() -> void:
	set_process(true)

func _process(_delta: float) -> void:
	# Update FPS display
	$FPSLabel.text = "FPS: %d" % Engine.get_frames_per_second()

func _on_level_pressed(level: int) -> void:
	print("Loading Level %d" % level)
	get_tree().change_scene_to_file("res://scenes/Level%d.tscn" % level)

func _on_play_pressed() -> void:
	print("Play pressed")
	get_tree().change_scene_to_file("res://scenes/Level1.tscn")

func _on_settings_pressed() -> void:
	print("Settings pressed")

func _on_info_pressed() -> void:
	print("Info pressed")

extends Node2D



func _on_play_pressed():
	get_tree().change_scene_to_file("res://tutorial/Scenes/tutorial.tscn")

func _on_button_credits_pressed():
	$Panel.show()

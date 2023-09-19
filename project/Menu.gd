extends Control


func _ready():
	#await get_tree().create_timer(1).timeout
	var tween = get_tree().create_tween().set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property($TitleTextGods, "position", Vector2(637.5, 100), 1)
	
	var tween2 = get_tree().create_tween().set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_IN_OUT)
	tween2.tween_property($TitleTextGreen, "position", Vector2(650, 250), 1)
	
	var tween3 = get_tree().create_tween().set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_IN_OUT)
	tween3.tween_property($TitleTextEarths, "position", Vector2(675, 400), 1)
	
	
func _on_play_pressed():
	get_tree().change_scene_to_file("res://src/Level.tscn")


func _on_quit_pressed():
	get_tree().quit()

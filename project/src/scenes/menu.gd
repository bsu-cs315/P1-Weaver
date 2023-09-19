extends Control

var free_circle = preload("res://src/scenes/circle_free.tscn")

func _ready():
	inst(Vector2(400,600))
	

		
	var tween = get_tree().create_tween().set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property($TitleTextGods, "position", Vector2(900, 250), 1)
	
	var tween2 = get_tree().create_tween().set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_IN_OUT)
	tween2.tween_property($TitleTextGreen, "position", Vector2(940, 500), 1)
	
	var tween3 = get_tree().create_tween().set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_IN_OUT)
	tween3.tween_property($TitleTextEarths, "position", Vector2(1050, 700), 1)
	
	
	
func inst(pos):
	var instance = free_circle.instantiate()
	instance.position = pos
	add_child(instance)
	
func _on_play_pressed():
	get_tree().change_scene_to_file("res://src/scenes/Level.tscn")


func _on_quit_pressed():
	get_tree().quit()

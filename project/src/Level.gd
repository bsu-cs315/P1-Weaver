extends Node2D

var circle = preload("res://src/Circle.tscn")
var circleCounter = 3

func _ready():
	inst(Vector2(400,600))
	$Circle.connect("circle_stop", on_state_changed)
	
func inst(pos):
	if circleCounter > 0:
		var instance = circle.instantiate()
		instance.position = pos
		add_child(instance)
		circleCounter -=1
		

func on_state_changed():
	
	$Timer.start(5)

	

func _on_timer_timeout():
	
	remove_child($Circle)
	inst(Vector2(400,600))

func _input(event):
	if event.is_action_pressed("new_ball"):
		remove_child($Circle)
		inst(Vector2(400,600))

extends Node2D

var circle = preload("res://src/Circle.tscn")
var circleCounter = 3
var score = 0


func _ready():
	inst(Vector2(400,600))
	
	
func inst(pos):
	if circleCounter > 0:
		var instance = circle.instantiate()
		instance.position = pos
		add_child(instance)
		circleCounter -=1
		$Hud/CircleCount.text = str(circleCounter)
		$Circle.connect("circle_stop", on_state_changed)
		$Circle.connect("point_score", update_score)


func update_score():
	print (score)
	score += 100
	$Hud/ScoreValue.text = str(score)

func on_state_changed():
	$Timer.start(5)

	

func _on_timer_timeout():
	remove_child($Circle)
	inst(Vector2(400,600))

func _input(event):
	if event.is_action_pressed("new_ball"):
		remove_child($Circle)
		inst(Vector2(400,600))
		


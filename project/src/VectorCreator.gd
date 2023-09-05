extends Area2D


var dragging
var drag_start = Vector2()
@export var maximum_length := 200


	
	

func _input(event):
	if event.is_action_pressed("click") and not dragging:
		dragging = true
		drag_start = get_global_mouse_position()
		
	if event.is_action_released("click") and dragging:
		dragging = false
		var drag_end = get_global_mouse_position()
		var launch_dir = -(drag_end - drag_start).clamped(maximum_length)
		

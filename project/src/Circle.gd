extends RigidBody2D


var dragging
var drag_start = Vector2()

func _input(event):
	if event.is_action_pressed("click") and not dragging:
		dragging = true
		drag_start = get_global_mouse_position()
	if event.is_action_released("click") and dragging:
		dragging = false
		var drag_end = get_global_mouse_position()
		var launch_dir = drag_start - drag_end
#		if launch_dir.angle() < -(PI/2) or launch_dir.angle() > PI/2:
#			apply_central_impulse(Vector2(0,1) * 5 * launch_dir)
#		elif launch_dir.angle() < PI/2 && launch_dir.angle() > 0:
#			apply_central_impulse(Vector2(1,0) * 5 * launch_dir)
#		else:
		apply_central_impulse(launch_dir * 5)


func _on_body_entered(body):
	if body.is_in_group("box"):
		print ("Nice Shot!")

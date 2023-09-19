extends RigidBody2D


var dragging
var drag_start = Vector2()
var disabler = 0

var rng = RandomNumberGenerator.new()


var sleep_counter = 0

signal circle_stop
signal point_score

func _ready():
	var sprite1 = "res://Assets/Images/Planet1.png" 
	var sprite2 = "res://Assets/Images/Planet2.png" 
	var sprite3 = "res://Assets/Images/Planet3.png" 
	
	rng.randomize()
	var chosen_sprite = rng.randi_range(1,3)
	if chosen_sprite == 1:
		$Sprite2D.texture = load(sprite1)
	elif chosen_sprite == 2:
		$Sprite2D.texture = load(sprite2)
	else:
		$Sprite2D.texture = load(sprite3)
	
func _input(event):
	if disabler < 1:
		if event.is_action_pressed("click") and not dragging:
			dragging = true
			drag_start = get_global_mouse_position()
			
		if event.is_action_released("click") and dragging:
			$PlayerFireSFX.play()
			dragging = false
			var drag_end = get_global_mouse_position()
			var launch_dir = drag_start - drag_end
			print (rad_to_deg(launch_dir.angle()))
			if launch_dir.angle() < -(PI/2) or launch_dir.angle() > PI/2:
				apply_central_impulse(Vector2(0,1) * 5 * launch_dir)
			elif launch_dir.angle() < PI/2 && launch_dir.angle() > 0:
				apply_central_impulse(Vector2(1,0) * 5 * launch_dir)
			else:
				apply_central_impulse(launch_dir * 5)
			disabler +=1
			

func _on_body_entered(body):
	if body.is_in_group("box"):
		$BoxHitSFX.play()
		emit_signal("point_score")


func _on_sleeping_state_changed():
	if sleep_counter % 2 == 1:
		emit_signal("circle_stop")
	sleep_counter += 1
	
	


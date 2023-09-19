extends RigidBody2D


var dragging
var drag_start = Vector2()


var rng = RandomNumberGenerator.new()






func _ready():
	
	var sprite1 = "res://src/planets/planet1.png"
	var sprite2 = "res://src/planets/planet2.png"
	var sprite3 = "res://src/planets/planet3.png"
	rng.randomize()
	
	var chosen_sprite = rng.randi_range(1,3)
	if chosen_sprite == 1:
		$Sprite2D.texture = load(sprite1)
	elif chosen_sprite == 2:
		$Sprite2D.texture = load(sprite2)
	else:
		$Sprite2D.texture = load(sprite3)
	
	
func _input(event):

	if event.is_action_pressed("click") and not dragging:
		dragging = true
		drag_start = get_global_mouse_position()
			
	if event.is_action_released("click") and dragging:
		$PlayerFireSFX.play()
		dragging = false
		var drag_end = get_global_mouse_position()
		var launch_dir = drag_start - drag_end
		
		apply_central_impulse(launch_dir * 5)
		


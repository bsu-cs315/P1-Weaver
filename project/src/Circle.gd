extends RigidBody2D

@export var strength : float = 500

func _process(delta):
	if Input.is_action_just_pressed("launch"):
		print('yes')
		var direction = Vector2(1, -1).normalized()
		var velocity = direction * strength
		print (velocity)
		apply_central_impulse(velocity)
	

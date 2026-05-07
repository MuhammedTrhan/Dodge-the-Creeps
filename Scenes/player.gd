extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# 1. Get input for all 4 directions at once
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    
	# 2. Apply movement
	if direction != Vector2.ZERO:
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)

	move_and_slide()

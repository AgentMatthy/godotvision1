extends CharacterBody2D


const speed = 50.0
const JUMP_VELOCITY = -400.0

var direction = Vector2(0, 0)


func _physics_process(delta):
	
	if Input.is_action_pressed("Left"):
		direction.x = -1
		velocity.x -= 1 * speed
	if Input.is_action_pressed("Right"):
		direction.x = 1
		velocity.x += 1 * speed
	if Input.is_action_pressed("Backwards"):
		direction.y = 1
		velocity.y += 1 * speed
	if Input.is_action_pressed("Forward"):
		direction.y = -1
		velocity.y -= 1 * speed

	velocity = velocity * 0.93

	move_and_slide()

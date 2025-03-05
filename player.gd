extends CharacterBody2D


const speed = 300.0



func _process(delta: float):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("up"):
		direction.y -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("right"):
		direction.x += 1

	if direction.length() > 0:
		direction = direction.normalized()

		position += direction * speed * delta

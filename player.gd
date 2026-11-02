extends RigidBody2D

func _process(delta: float) -> void:
		var dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		linear_velocity = dir*1000

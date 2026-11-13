class_name player extends RigidBody2D

var velocity_handler: VelocityHandler = VelocityHandler.new()

func _init() -> void:
		lock_rotation = true
		linear_damp = 40

func _physics_process(delta: float) -> void:
		var dir = Input.get_vector("game_left", "game_right", "game_up", "game_down")
		velocity_handler.accelerate_towards(self, dir)
		
		

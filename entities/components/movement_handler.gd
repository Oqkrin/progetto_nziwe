class_name MovementHandler extends RefCounted

#velocità limite raggiungibile
@export var terminalVelocity: float = 500;

#accelerazione px per tick
@export var acceleration: float = 5000;

@export var jumpForce: float = 3000;

func accelerate_towards(state: PhysicsDirectBodyState2D, dir: Vector2) -> void :
	state.apply_central_force(dir.normalized()*acceleration)
	state.linear_velocity = state.linear_velocity.limit_length(terminalVelocity)
	

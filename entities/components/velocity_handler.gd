class_name VelocityHandler extends RefCounted

#velocità limite raggiungibile
@export var terminalVelocity: int = 2;

#accelerazione px per tick
@export var acceleration: int = 1;

func accelerate_towards(node: RigidBody2D, dir: Vector2) -> void :
	node.linear_velocity += dir.normalized()*acceleration 
	node.linear_velocity.clampf(-terminalVelocity, terminalVelocity)

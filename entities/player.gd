class_name player extends RigidBody2D

@onready var ground_checker = $ShapeCast2D
@onready var animated_sprite = $AnimatedSprite2D

#componenti
var movement_handler: MovementHandler = MovementHandler.new()

#inputs
var input_dir: Vector2
const horizontal_mask: Vector2 = Vector2(1, 0)

#coyote timer e jump buffering
var coyote_timer: float = 0.0
@export var coyote_max_time: float = 0.12

var jump_buffer_timer: float = 0.0
@export var jump_buffer_time_max: float = 0.24

func _ready() -> void:
		lock_rotation = true
		linear_damp = 7.0
		animated_sprite.play("idle")
		

func _process(delta: float) -> void:	
	directional_input() 
	if (linear_velocity.length() == 0 ) :
		animated_sprite.play("idle")
	else :
		animated_sprite.play("run")
	animated_sprite.flip_h = linear_velocity.x < 0
	jump_input()
	
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	handle_movement(state)
	handle_jump(state)
			
func directional_input() -> void : 
	input_dir = Input.get_vector("game_left", "game_right", "game_up", "game_down")

func handle_movement(state) -> void : 
	movement_handler.accelerate_towards(state, input_dir*horizontal_mask)

func jump_input() -> void : 
	if Input.is_action_just_pressed("game_jump") :
		jump_buffer_timer = jump_buffer_time_max

func handle_jump(state: PhysicsDirectBodyState2D) -> void :
	if ground_checker.is_colliding(): 
		coyote_timer = coyote_max_time
	else: 
		coyote_timer -= state.step
	
	if jump_buffer_timer > 0:
		jump_buffer_timer -= state.step
		
	if jump_buffer_timer > 0 and coyote_timer > 0: 
		jump_buffer_timer = 0.0 
		coyote_timer = 0.0
		state.apply_central_force(Vector2.UP * movement_handler.jumpForce)

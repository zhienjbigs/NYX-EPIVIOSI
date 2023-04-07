
extends KinematicBody

export var gravity = Vector3.DOWN * 20
export var rot_speed = 10

const SPEED = 15
const ACCELERATION = 8

var velocity = Vector3.ZERO
var is_moving 
var hv = velocity
var new_pos = Vector3.normalized() * SPEED
var Nyx
var dir = Vector3()

func _physics_process(_delta):
	
	get_input(_delta)
	#print(gravity)
	
func get_input(_delta):
	
	var y = velocity.y
	velocity = Vector3.ZERO
	if Input.is_action_pressed("forward"):
		velocity += transform.basis.z * SPEED
	if Input.is_action_pressed("back"):
		velocity += -transform.basis.z * SPEED
	if Input.is_action_pressed("right"):
		rotate_y(-rot_speed * _delta)
	if Input.is_action_pressed("left"):
		rotate_y(rot_speed * _delta)
	velocity.y = y
	velocity += gravity * _delta
	velocity = move_and_slide(velocity, Vector3.UP)

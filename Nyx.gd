extends KinematicBody

export var gravity = Vector3.DOWN * 20
export var rot_speed = 10

const SPEED = 5
const ACCELERATION = 5

var velocity = Vector3.ZERO
var is_moving 
var hv = velocity
var new_pos = Vector3.normalized() * SPEED
var Nyx
var dir = Vector3()

onready var anim = $AnimationPlayer.get_animation("Armature001mixamocomLayer0")

#func _ready():
	#self.player_position = global.livingroom_position

func _physics_process(_delta):
	
	get_input(_delta)
	#print(gravity)
	
func get_input(_delta):
	
	var y = velocity.y
	velocity = Vector3.ZERO
	if Input.is_action_pressed("forward"):
		velocity += transform.basis.z * SPEED
		anim.set_loop(true)
		$AnimationPlayer.play("Armature001mixamocomLayer0")
	elif Input.is_action_pressed("back"):
		velocity += -transform.basis.z * SPEED
		anim.set_loop(true)
		$AnimationPlayer.play("Armature001mixamocomLayer0")
	elif Input.is_action_pressed("right"):
		velocity += transform.basis.z * SPEED
		rotate_y(-rot_speed * _delta)
		anim.set_loop(true)
		$AnimationPlayer.play("Armature001mixamocomLayer0")
	elif Input.is_action_pressed("left"):
		velocity += transform.basis.z * SPEED
		rotate_y(rot_speed * _delta)
		anim.set_loop(true)
		$AnimationPlayer.play("Armature001mixamocomLayer0")
	else:
		anim.set_loop(false)
		$AnimationPlayer.stop(true)
	velocity.y = y
	velocity += gravity * _delta
	velocity = move_and_slide(velocity, Vector3.UP)

var inventory_resource = load("res://Inventory.gd")
var inventory = inventory_resource.new()


#func _on_AnimationPlayer_animation_started(anim_name):
	#get_tree().change_scene("res://Bathroom.tscn")

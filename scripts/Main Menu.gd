extends Node
onready var buttonSound = $hitsound
#onready var anim = $StartGame/AnimationPlayer.get_animation("blinking")
signal playButton# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	#anim.set_loop(true)
	#StartGame/AnimationPlayer.play("blinking")
	pass


#func _on_play_playButton():
	#BUTTONwav.play()	
	#emit_signal("playButton")



func _on_play_mouse_entered():
	$hitsound.play()
	pass # Replace with function body.


func _on_continue_mouse_entered():
	$hitsound.play()
	pass # Replace with function body.


func _on_Settings_mouse_entered():
	$hitsound.play()
	pass # Replace with function body.


func _on_exit_mouse_entered():
	$hitsound.play()
	pass # Replace with function body.

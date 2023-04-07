extends Button
signal settingsButton

func _ready():
	pass 
func _on_settings_pressed():
	emit_signal("settingsButton")
func _physics_process(delta):
	pass

func _on_play_settingsButton():
	pass
func _on_exit_settingsButton():
	pass # Replace with function body.

extends Node 

export (NodePath) var animator
export (String) var fact
export (bool) var answer = false

func _Fake_Button_pressed():
	if _Fake_Button_pressed():
		animator.play("FakeSlide")


func _on_Fake_Button_pressed():
	if _Fake_Button_pressed():
		animator.play("FakeSlide")

#######################################

func _Real_Button_pressed():
	if _Real_Button_pressed():
		animator.play("RealSlide")


func _on_Real_Button_pressed():
	if _Real_Button_pressed():
		animator.play("RealSlide")

extends Button

export (NodePath) var animator
export (NodePath) var MainScene
export (NodePath) var questionHolder
export (String) var fact
export (bool) var answer

func _on_Fake_Button_pressed():
	if answer == true:
		animator.play("FakeSlide")
	else:
		if answer == false:
			animator.play("RealSlide")

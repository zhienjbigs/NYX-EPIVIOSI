extends Control

export (NodePath) var questionTextPath
export (NodePath) var RealButtonPath
export (NodePath) var FakeButtonPath
export (NodePath) var animatorPath
export (NodePath) var timerPath
export (NodePath) var questionHolderPath

onready var questionText   = get_node(questionTextPath)
onready var RealButton     = get_node(RealButtonPath)
onready var FakeButton     = get_node(FakeButtonPath)
onready var animator       = get_node(animatorPath)
onready var timer          = get_node(timerPath)
onready var questionHolder = get_node(questionHolderPath)

var score = 0
var answer = null

#################################################################
##########################...Hola...#############################
#################################################################

func _ready():
	randomize()
	set_question()
	
func set_question ():
	var childAmount = questionHolder.get_child_count()
	var Question
	
	
	
	if childAmount > 0:
		Question = questionHolder.get_child(rand_range(0,childAmount))
		questionText.set_text(Question.fact)
		answer = Question.answer
	else:
		questionText.set_text("no more articles to read, your score" + str(score) + "correct answers")
		
		if Question != null:
			questionHolder.remove_child(Question)

##################################################################
############################...Hmm...#############################
##################################################################

func _on_Real_Button_pressed():
	if answer == false:
		RealButton.set_text("Wrong")
	else:
		RealButton.set_text("Correct")
		score += 1
	animator.play("RealSlide")

func _on_Fake_Button_pressed():
	if answer == true:
		FakeButton.set_text("Wrong")
	else:
		FakeButton.set_text("Correct")
		score += 1
	animator.play("FakeSlide")
	timer.start()

####################################################################
############################...Hallo...##############################
####################################################################

func _on_timer_timeout():
	animator.play_backwards(animator.get_current_animation())
	set_question()

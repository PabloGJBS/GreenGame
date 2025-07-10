extends Node2D

var activityId

signal activityPlay (activity)

func setTitle (value):
	$Panel/Title.text = value

func setPrice (value):
	$Panel/PriceCoins.text = value	
	
func setTime (value):
	$Panel/TimeToReady.text = value
	
func setQuestions (value):
	$Panel/Numquestions.text = value
	
func setCity (value):
	$Panel/City.text = value
	
func setActivityId (value):
	activityId = value
	
func showButtonPlay():
	$Panel/ButtonPlay.visible = true
	
func activityUnavailable():
	$Panel/ButtonPlay.visible = false
	# I could not change the panel color/style, so I created another panel 
	# Dont know how to refactor now
	$UnavailablePanel.visible = true
	
	
	
func _on_button_play_pressed():
	activityPlay.emit(activityId)

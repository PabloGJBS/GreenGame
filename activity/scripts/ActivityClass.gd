extends Node


class_name Activity
var idActivity : int
var title : String
var priceCoins : int
var numQuestActivity : int
var rewardCoins : int
var rewardKnowledgeGems : int
var temperatureRise : float
var rounds : int
var roundLeft : int
var rewardStory : String
var city : String
var available : bool = true

signal activityFinished (activity: Activity)

func _init(
		p_idActivity : int,
		p_title : String,
		p_priceCoins : int,
		p_numQuestActivity : int,
		p_rewardCoins : int,
		p_rewardKnowledgeGems : int,
		p_temperatureRise : float,
		p_rounds : int,
		p_rewardStory : String,
		p_city : String,
	):
	self.idActivity = p_idActivity
	self.title = p_title
	self.priceCoins = p_priceCoins
	self.numQuestActivity = p_numQuestActivity
	self.rewardCoins = p_rewardCoins
	self.rewardKnowledgeGems = p_rewardKnowledgeGems
	self.temperatureRise = p_temperatureRise
	self.rounds = p_rounds
	self.rewardStory = p_rewardStory
	self.city = p_city
	self.roundLeft = p_rounds
	
	
func getRoundLeftInt():
	return int(roundLeft)

func updateRoundActivity():
	roundLeft -= 1
	if roundLeft <= 0:
		activityFinished.emit(self)

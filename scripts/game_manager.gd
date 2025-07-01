extends Node

var Score = 0
@onready var score_label: Label = $ScoreLabel

func add_point():
	Score += 1
	score_label.text = "Score: " + str(Score)

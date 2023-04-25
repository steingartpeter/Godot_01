extends Node2D

class_name Game

var plyr
func _init():
	self.plyr = Player.new()

func _ready():
	var msg:String = "Greetings %s" % self.plyr.playerName
	msg += "\nYour age is: %s" % str(self.plyr.playerAge)
	msg += "\n============================================="
	$GUI/Control/MainTextArea.text = msg
	

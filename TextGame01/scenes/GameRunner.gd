extends Node2D

var plyr = Player.new()

func _ready():
	var msg:String = "Greetings %s" % self.plyr.playerName
	msg += "Your age is: %s" % str(self.plyr.playerAge)
	msg += "============================================="
	

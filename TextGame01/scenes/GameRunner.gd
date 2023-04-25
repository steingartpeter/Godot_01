extends Node2D

# Create a class to be accessible everywhere
class_name Game

# Locval variables: a player, and the comuniactionplatform, the Label
var plyr
var scrnText:Label
func _init():
	self.plyr = Player.new()

func _ready() -> void:
	var msg:String = "Greetings %s" % self.plyr.playerName
	msg += "\nYour age is: %s" % str(self.plyr.playerAge)
	msg += "\n============================================="
	self.scrnText = $GUI/Control/MainTextArea
	self.scrnText.text = msg
	$GUI/Control/Btn01.connect("pressed",self.hndl_btn1_press)
	$GUI/Control/Btn02.connect("pressed",self.hndl_btn2_press)

func hndl_btn1_press():
	var msg:String = "Button 01  pressed runs"
	scrnText.text = msg

func hndl_btn2_press():
	var msg:String = "Button 02  pressed runs"
	scrnText.text = msg
	

	

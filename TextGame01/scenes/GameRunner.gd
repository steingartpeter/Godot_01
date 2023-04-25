extends Node2D

# Create a class to be accessible everywhere
class_name Game

# Locval variables: a player, and the comuniactionplatform, the Label
var plyr
var scrnText:Label

# In inititlaization, we create a new player instance
func _init():
	self.plyr = Player.new()

# When we are ready, we write a short greetings, then
# we connect to child scen buttons pressed events
func _ready() -> void:
	var msg:String = "Greetings %s" % self.plyr.playerName
	msg += "\nYour age is: %s" % str(self.plyr.playerAge)
	msg += "\n=============================================\n"
	msg += """You unfortunatley suffered a accident on the sea, and now you are shipwrecked. Your ship sunk at %f longitude, and %f lattitude.
	=============================================
	Your chances are slight to avoid death.
	You need to create some kind of raft, or send some kind of bottle message to call someone for your aid.
	Besides of this, you need water, and food supplies.
	""" % [self.plyr.islandLat, self.plyr.islandLongt]
	self.scrnText = $GUI/Control/MainTextArea
	self.scrnText.text = msg
	$GUI/Control/Btn01.connect("pressed",self.hndl_btn1_press)
	$GUI/Control/Btn02.connect("pressed",self.hndl_btn2_press)

# Handle the button 1 click event
func hndl_btn1_press():
	var msg:String = "Button 01  pressed runs"
	scrnText.text = msg

# Handle button 2 click event
func hndl_btn2_press():
	var msg:String = "Button 02  pressed runs"
	scrnText.text = msg
	

	

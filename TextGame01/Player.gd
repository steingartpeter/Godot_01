extends Node

class_name Player

var playerName:String
var playerAge:int = 25
var islandLat:float=11.04152
var islandLongt:float=42.1420
var names:PackedStringArray=['Peter', 'John','Sylvia','Meredith','Gabriel',
'Alejandro','Mortimer']
var helper = UserIncludes.new()
var is_alive:bool = true

func _init():
	self.setupRndmPlayer()

func setupRndmPlayer()->void:
	var idx:int = helper.getRndInt(0,names.size()-1)
	self.playerName = names[idx]
	self.playerAge = helper.getRndInt(20,60)
	self.islandLat = helper.getRndFlt(5.0,105.99)
	self.islandLongt = helper.getRndFlt(5.0,105.99)
	



extends Node

class_name UserIncludes

var playerName:String
var playerAge:int = 25
var islandLat:float=11.04152
var islandLongt:float=42.1420
var names:PackedStringArray=['Peter', 'John','Sylvia','Meredith','Gabriel',
'Alejandro','Mortimer']

func _init():
	self.setUpGame()

func setUpGame()->void:
	var idx:int = self.getRndInt(0,names.size()-1)
	self.playerName = names[idx]

func getRndInt(minVal:int=0,maxVal:int=100)->int:
	var gnrtr = RandomNumberGenerator.new()
	gnrtr.randomize()
	return gnrtr.randi_range(minVal,maxVal)
	
func getRndFlt(minVal:float=0,maxVal:float=100)->float:
	var gnrtr = RandomNumberGenerator.new()
	gnrtr.randomize()
	return gnrtr.randf_range(minVal,maxVal)


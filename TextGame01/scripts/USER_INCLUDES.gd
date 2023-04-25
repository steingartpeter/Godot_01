extends Node

class_name UserIncludes


func getRndInt(minVal:int=0,maxVal:int=100)->int:
	var gnrtr = RandomNumberGenerator.new()
	gnrtr.randomize()
	return gnrtr.randi_range(minVal,maxVal)
	
func getRndFlt(minVal:float=0,maxVal:float=100)->float:
	var gnrtr = RandomNumberGenerator.new()
	gnrtr.randomize()
	return gnrtr.randf_range(minVal,maxVal)


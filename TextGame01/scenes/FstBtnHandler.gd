extends Button

var plyrNm:String = UserIncludes.new().playerName

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_pressed():
	var textWndw = $"../MainTextArea"
	print("Buton clicked, playername shold be there => %s" % plyrNm)
	textWndw.text = plyrNm

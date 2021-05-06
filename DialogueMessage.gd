extends Object

class_name DialogueMessage

var speaker = ""
var speaker_alignment = 1
var message = ""

func _init(who, said, pos=1):
	speaker = who
	speaker_alignment = pos
	message = said

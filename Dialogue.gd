extends VBoxContainer

var texts = []
var pos = 0

func _ready():
	pass

enum Alignment {Left, Right}

func clear():
	pos = 0
	get_node("HBoxContainer/NameA").text = ""
	get_node("HBoxContainer/NameB").text = ""
	get_node("PanelContainer/Text").text = ""
	texts = []
	
func add_text(speaker, message, speaker_type=Alignment.Left):
	texts.append(DialogueMessage.new(speaker, message, speaker_type))

func show_text(msg):
	match msg.speaker_alignment:
		Alignment.Left:
			get_node("HBoxContainer/NameA").text = msg.speaker
			get_node("HBoxContainer/NameB").text = ""
		Alignment.Right:
			get_node("HBoxContainer/NameA").text = ""
			get_node("HBoxContainer/NameB").text = msg.speaker
	get_node("PanelContainer/Text").text = msg.message
	
func next():
	if finished():
		hide()
		return false
	show()
	show_text(texts[pos])
	pos += 1
	return true

func finished():
	return pos >= texts.size()

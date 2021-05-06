extends Node2D

func some_fance_dialog_loading_thingy(dl, msg_id):
	dl.clear()
	dl.add_text("Kevin", "Hey Bob, how are your today?")
	dl.add_text("Bob", "I'm fine Kevin. How's your Game going? Finally did some progress?", dl.Alignment.Right)
	dl.add_text("Kevin", "Well, you know ...")
	dl.add_text("Kevin", "... I make progress!!!")

func _on_Next_pressed():
	if not $BottomMenuArea/Dialogue.next():
		$Next.hide()
		$Start.show()

func _on_Start_pressed():
	some_fance_dialog_loading_thingy($BottomMenuArea/Dialogue, "TalkToBob")
	$BottomMenuArea/Dialogue.next()
	$Start.hide()
	$Next.show()

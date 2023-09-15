extends Node

var path = ["user://score1.save", "user://score2.save", "user://score3.save", "user://score4.save", "user://score5.save"]
var player_path = ["user://player1.save", "user://player2.save", "user://player3.save", "user://player4.save", "user://player5.save"]

var highest_score = 0
var current_score = global.score

var player_file

func _ready():
	load_score()



func save_score():
	var file = FileAccess.open("user://score1.save", FileAccess.WRITE_READ)
	file.store_32(highest_score)
	file = null


func load_score():
	var file = FileAccess.open("user://score1.save", FileAccess.READ)
	if FileAccess.file_exists("user://score1.save"):
		highest_score = file.get_32()


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if highest_score < global.score:
		highest_score = global.score



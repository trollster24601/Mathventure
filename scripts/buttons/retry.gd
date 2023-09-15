extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$"../../../../over".play()
	Save.save_score()
	global.soal = 1
	global.score = 0
	global.level = 1
	global.stage = 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass



func _on_pressed():
	get_tree().change_scene_to_file("res://scenes/mathventure.tscn")
	pass # Replace with function body.

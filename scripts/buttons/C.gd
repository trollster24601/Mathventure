extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
		
	pass


func _on_pressed():
	if (global.c):
		var boneScene = load("res://scenes/bone.tscn")
		var newInstance = boneScene.instantiate()
		newInstance.position.y = $"../../../..".position.y -40 -$".".position.y 
		newInstance.position.x = 0 - $".".position.x - 288 + $"../../../../CharacterBody2D".position.x
		add_child(newInstance)
		$"../../../../benar".play()
		var range_soal = global.level * 10
		var timer = $"../../../../RichTextLabel"
		global.soal += 1
		global.time = timer.limit
		
		var label = $"../Label" 
		label.generate_soal(range_soal)
		
		global.level = ceil(global.soal/40.0)
		global.score = global.soal * 10 - 10
		
		
		
		#print(global.level)
		#print(global.score)
		
	else:
		global.time = 0
	pass # Replace with function body.

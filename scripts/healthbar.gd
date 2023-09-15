extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	$".".position.x = $"../CharacterBody2D".position.x -60
	$".".position.y = $"../CharacterBody2D".position.y  -70
	$".".value = int($"../RichTextLabel".text)
	pass

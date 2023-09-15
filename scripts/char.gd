extends Node

@onready var _animated_sprite = $"."



func _process(_delta):
	_animated_sprite.play("default")
	

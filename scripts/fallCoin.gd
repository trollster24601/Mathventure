extends CharacterBody2D


@export var speed = 30

var vertikal= global.vertikal

var target = Vector2(0,vertikal)
var reload = false


func _physics_process(_delta):
	velocity =  target * speed
	move_and_slide()








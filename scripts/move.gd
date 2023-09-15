extends CharacterBody2D

@export var speed = 20

var vertikal= 0
var horizontal= 10
var target = Vector2(horizontal,0)
var reload = false


func _physics_process(_delta):
	velocity =  target * speed
	move_and_slide()
	
	# look_at(target)
	



func _on_area_2d_body_entered(_body):
	target.x *= -1





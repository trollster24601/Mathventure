extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$".".position.x = $"../skorTulang".position.x + 38
	$".".position.y = $"../skorTulang".position.y -26
	set_text(str(global.score))
	pass

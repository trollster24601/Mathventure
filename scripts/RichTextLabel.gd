extends RichTextLabel
var limit = 30


# Called when the node enters the scene tree for the first time.
func _ready():
	global.time = limit
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if(global.time == 0):
		get_tree().change_scene_to_file("res://scenes/retry.tscn")
	set_text(str(global.time))


func _on_timer_timeout():
	if (global.time != 0):
		global.time-=1
	pass # Replace with function body.

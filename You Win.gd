extends Area2D
#worldcomplete_portal

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "KinematicBody2D":
			get_tree().change_scene("You win!.tscn")
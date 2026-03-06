extends Area2D

@export var fall_speed := 300
@export var sceneName := "LoseScreen"

func _process(delta):
	position.y += fall_speed * delta
	
	if global_position.y > 2000:
		queue_free()

func _on_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))

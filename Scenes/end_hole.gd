class_name EndHole extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_inner_body_entered(body: Node3D) -> void:
	print(body.get_groups())
	if body.is_in_group("Dysk"):
		print("dysk wpadł")
	else:
		print("jakieś inne gówno")
		

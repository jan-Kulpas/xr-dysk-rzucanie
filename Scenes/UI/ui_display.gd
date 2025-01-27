extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Viewport2Din3D.connect_scene_signal("reset", _on_reset)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_scene_base_update_throws(count: int) -> void:
	$Viewport2Din3D.scene_node.update_throws(count)


func _on_scene_base_update_timer(time: String) -> void:
	$Viewport2Din3D.scene_node.update_timer(time)
	
func _on_reset():
	get_tree().reload_current_scene()

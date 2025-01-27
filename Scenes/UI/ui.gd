extends Control

@onready var throws_label = $MarginContainer/HBoxContainer/VBoxContainer/Throws
@onready var time_label = $MarginContainer/HBoxContainer/VBoxContainer/Time

signal reset()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_throws(count: int):
	throws_label.text = "Throws: %d" % count

func update_timer(time: String):
	time_label.text = "Time: %s" % time


func _on_button_pressed() -> void:
	reset.emit()

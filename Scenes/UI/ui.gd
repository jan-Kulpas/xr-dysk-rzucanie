extends Control

@onready var throws_label = $MarginContainer/VBoxContainer/Throws
@onready var time_label = $MarginContainer/VBoxContainer/Time

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

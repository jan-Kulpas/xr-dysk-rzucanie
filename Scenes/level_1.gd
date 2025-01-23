extends XRToolsSceneBase

signal update_throws(count: int)
signal update_timer(time: String)

var throw_count: int = 0
var is_game_complete : bool = false 

@onready var teleporter = $XROrigin3D/LeftHand/FunctionTeleport
@onready var levelTimer = $LevelTimer
@onready var endLevelDisplay = $EndLevelDisplay

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	throw_count = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if(Input.is_action_just_pressed("Reset")):
		reset_scene()
	if(!is_game_complete):
		update_timer.emit(levelTimer.get_time())


func _on_dysk_dropped(_pickable: Variant) -> void:
	throw_count += 1
	teleporter.enabled = true
	update_throws.emit(throw_count)
	print(throw_count)

func _on_dysk_picked_up(_pickable: Variant) -> void:
	teleporter.enabled = false
	print("Picked up")


func _on_hole_disk_fell_in() -> void:
	is_game_complete = true
	endLevelDisplay.visible = true

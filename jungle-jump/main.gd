extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var level_num = str(GameState.current_level).pad_zeros(2)
	var path = "res://level/level_%s.tscn" % level_num
	var level = load(path).instantiate()
	add_child(level)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

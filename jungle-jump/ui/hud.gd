extends MarginContainer

@onready var life_counter = $HBoxContainer/LifeCounter.get_children()


func update_life(value):
	for heart in life_counter.size():
		life_counter[heart].visible = value > heart


func update_score(value):
	$HBoxContainer/Score.text = str(value)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

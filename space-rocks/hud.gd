extends CanvasLayer

signal start_game

@onready var lives_counter = $MarginContainer/HBoxContainer/ LivesCounter.get_children()
@onready var score_label = $MarginContainer/HBoxContainer/ScoreLabel
@onready var message = $VBoxContainer/Message
@onready var start_button = $VBoxContainer/StartButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func show_message(text):
	message.text = text
	message.show()
	$Timer.start()


func update_score(value):
	score_label.text = str(value)


func update_lives(value):
	for item in 3:
		lives_counter[item].visible = value > item


func game_over():
	show_message("Game Over")
	await $Timer.timeout
	start_button.show()


func _on_start_button_pressed() -> void:
	start_button.hide()
	start_game.emit()


func _on_timer_timeout() -> void:
	message.hide()
	message.text = ""

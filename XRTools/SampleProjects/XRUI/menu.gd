extends Control

signal button_pressed
signal slider_changed

var red = 0
var green = 0
var blue = 0

@onready var sliderR = $ColorRect/MarginContainer/VBoxContainer/HBoxContainer/SliderR
@onready var sliderG = $ColorRect/MarginContainer/VBoxContainer/HBoxContainer3/SliderG
@onready var sliderB = $ColorRect/MarginContainer/VBoxContainer/HBoxContainer4/SliderB

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	emit_signal("button_pressed")

func _on_slider_r_value_changed(value: float) -> void:
	red = value
	emit_signal("slider_changed")

func _on_slider_g_value_changed(value: float) -> void:
	green = value
	emit_signal("slider_changed")

func _on_slider_b_value_changed(value: float) -> void:
	blue = value
	emit_signal("slider_changed")

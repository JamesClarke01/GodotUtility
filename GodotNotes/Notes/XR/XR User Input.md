# Button Press
Set up signal on controller
Then
```gdscript
func _on_right_physical_controller_button_pressed(name: String) -> void:
	if name == "ax_button":
		print("Press!")
```
# Joystick input
Set up signal on controller

Vector2 value returned:
	value\[0] is a float between -1 and 1, where -1 is full left and 1 is full right
	value\[1] is a float between -1 and 1, where -1 is full down and 1 is full up

```gdscript
func _on_right_physical_controller_input_vector_2_changed(name: String, value: Vector2) -> void:
	if value[1] >= 0: #Speed up on Analogue stick up
		marsSim.increaseTimeMult(remap(value[1], 0, 1, 0, 100))
	if value[1] < 0: #Speed down on Analogue stick down
		marsSim.decreaseTimeMult(remap(value[1], 0, -1, 0, 100))
```


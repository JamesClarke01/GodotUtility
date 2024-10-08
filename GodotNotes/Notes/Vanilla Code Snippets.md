# Add Input Map in Code
```
InputMap.add_action("forward")
keyEvent = InputEventKey.new()
keyEvent.keycode = KEY_W
InputMap.action_add_event("forward", keyEvent)
```
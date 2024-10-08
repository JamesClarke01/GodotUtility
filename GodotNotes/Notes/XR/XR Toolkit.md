Docs: https://godotvr.github.io/godot-xr-tools/docs/home/

**NOTE:** When enabled, after restarting editor a PlayerBody appears on the XROrigin3D node automatically. This is needed for the scene to function correctly
![[Pasted image 20241003105142.png]]

**NOTE:** The things added to hands are FUNCTIONS and they are found in addons/godot-xr-tools/functions
# Turn
Add a MovementTurn to a hand
![[Pasted image 20241002160501.png]]
Turn mode is set to default which is snap, this default can be changed in the openxr settings
# Move
Add a movement_direct to the hand you want to control movement.
Note that the XROrigin3D will then be affected by gravity
# Flight
Add a movement_flight function to a controller.

Note that a button to enable flight is how this works normally.
I created a custom implementation in the My3DSky project which removed the button toggle and have it enabled by default, which involved calling set_flying(true) in ready and removing any code that calls set_flying(false)

Default values for nice flight obtained from https://godotvr.github.io/godot-xr-tools/docs/flight/
- Speed Scale = 5 (gentle speed)
- Speed Traction = 10 (quickly get up to controlled speed)
- Acceleration Scale = 0 (don’t continue to accelerate)
- Guidance = 0 (no need for guidance as no acceleration)
- Exclusive = True (ignore gravity)

Head or controllers can be used to control pitch and bearing
Ensure that the correct controller is set, doesn't inherit this info for some reason
# Creating a pickable Object
In the Objects folder, right click on pickable.tscn and choose "Create new inherited scene"
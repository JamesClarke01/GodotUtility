# Changes Made
This is a modified version of XRToolsPickable which adds the field "Rotation Enabled". This set to true by default and the object behaves as expected. When this is set to false, the rotation of the object won't be affected by the grab.
# Why did I do this
Needed to be able to drag a frozen object around without it rotating
# Installation
Place these files in the folders their counterparts are in (see below), and create an object that inherits from the pickable_custom scene to create a pickable object with the new functionality.
# Implementation Details
Created new version of the following files, appending 'custom' to the end of the file name:
- godot-xr-tools/objects/pickable.gd
- godot-xr-tools/objects/pickable.tscn
- godot-xr-tools/grab_points/grab_driver_custom.gd
- godot-xr-tools/grab_points/grab_custom.gd
## pickable_custom.gd
- This is the class that a pickable object inherits from
- Added the field "rotation_enabled" which is defaulted to true
## grab_custom.gd
-  This is a class that stores information on a current grab motion
- Added "rotation_enabled" field, which is set in the constructor
## grab_driver_custom.gd
- This script handles the physics of the current grab
- It retrieves info on the grab from the grab_custom class
- In the physics_process function, if rotation_enabled is set to false, no rotation is applied to the currently held object
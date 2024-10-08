https://docs.godotengine.org/en/stable/tutorials/xr/openxr_hand_tracking.html

# Skeleton Rig
Got Skeleton Rig from the assets folder in here: https://github.com/godotengine/godot-demo-projects/tree/master/xr/openxr_hand_tracking_demo
## Important
```
You can also set the `Bone Update` mode on this node.

> - `Full` applies the hand tracking data fully. This does mean that the skeleton positioning will potentially reflect the size of the actual hand of the user. This can lead to scrunching effect if meshes aren't weighted properly to account for this. Make sure you test your game with players of all sizes when optical hand tracking is used!
>     
> - `Rotation Only` will only apply rotation to the bones of the hands and keep the bone length as is. In this mode the size of the hand mesh doesn't change.
>
```

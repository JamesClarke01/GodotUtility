extends Node3D
"""
This startup code contains a the startup code from the Godot docs (https://docs.godotengine.org/en/stable/tutorials/xr/setting_up_xr.html)
It also contains code to synchronise the headset orientation at startup, 
without it the headset usually starts in the incorrect orientation
"""
var xr_interface: XRInterface
@onready var uninitialized_hmd_transform:Transform3D = XRServer.get_hmd_transform()
var hmd_synchronized:bool = false

func _ready():
	init_xr()

func _process(delta: float) -> void:
	sync_headset_orientation()

func init_xr():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED) # Turn off v-sync
		get_viewport().use_xr = true # Change our main viewport to output to the HMD
		xr_interface.pose_recentered.connect(_on_openxr_pose_recentered)
		print("OpenXR initialized successfully")
	else:
		print("OpenXR not initialized, please check if your headset is connected")

func sync_headset_orientation():
	"""
	Synchronizes headset ORIENTATION as soon as tracking information begins to arrive :
	"""
	if not hmd_synchronized:
		if uninitialized_hmd_transform != XRServer.get_hmd_transform():
			hmd_synchronized = true
			_on_openxr_pose_recentered()

func _on_openxr_pose_recentered() -> void:
	XRServer.center_on_hmd(XRServer.RESET_BUT_KEEP_TILT, true)

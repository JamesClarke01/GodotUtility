# Draw XYZ grid planes
```
DebugDraw3D.draw_grid(transform.origin, Vector3(50, 0, 0), Vector3(0,50,0), Vector2i(100,100), Color.BLUE, true, delta*2)

DebugDraw3D.draw_grid(transform.origin, Vector3(50, 0, 0), Vector3(0,0,50), Vector2i(100,100), Color.RED, true, delta*2)

DebugDraw3D.draw_grid(transform.origin, Vector3(0, 50, 0), Vector3(0,0,50), Vector2i(100,100), Color.GREEN, true, delta*2)
```